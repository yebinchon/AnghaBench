; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_mark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_writes_c = type { i32, i32, i32, i32, i32 }
%struct.pending_block = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error allocating pending block\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error copying mark data\00", align 1
@LOG_MARK_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log_writes_c*, i8*)* @log_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_mark(%struct.log_writes_c* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.log_writes_c*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pending_block*, align 8
  %7 = alloca i64, align 8
  store %struct.log_writes_c* %0, %struct.log_writes_c** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.log_writes_c*, %struct.log_writes_c** %4, align 8
  %9 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 4
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pending_block* @kzalloc(i32 16, i32 %13)
  store %struct.pending_block* %14, %struct.pending_block** %6, align 8
  %15 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %16 = icmp ne %struct.pending_block* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = call i32 @DMERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kstrndup(i8* %22, i64 %24, i32 %25)
  %27 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %28 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %30 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %36 = call i32 @kfree(%struct.pending_block* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %21
  %40 = load %struct.log_writes_c*, %struct.log_writes_c** %4, align 8
  %41 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %40, i32 0, i32 4
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %44 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %48 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @LOG_MARK_FLAG, align 4
  %50 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %51 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.log_writes_c*, %struct.log_writes_c** %4, align 8
  %55 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %54, i32 0, i32 2
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %58 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %57, i32 0, i32 0
  %59 = load %struct.log_writes_c*, %struct.log_writes_c** %4, align 8
  %60 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %59, i32 0, i32 3
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load %struct.log_writes_c*, %struct.log_writes_c** %4, align 8
  %63 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.log_writes_c*, %struct.log_writes_c** %4, align 8
  %66 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @wake_up_process(i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %39, %33, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.pending_block* @kzalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @kfree(%struct.pending_block*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
