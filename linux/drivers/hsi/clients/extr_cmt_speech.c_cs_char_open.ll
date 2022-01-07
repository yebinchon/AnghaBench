; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_char_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_char_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_4__* }

@cs_char_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CS_MMAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to initialize HSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cs_char_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_char_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  br label %46

15:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 6), align 8
  %16 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %43

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 4), align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @CS_MMAP_SIZE, align 4
  %28 = call i32 @cs_hsi_start(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 5), %struct.TYPE_3__* %25, i64 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 4), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %40

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 1), align 8
  %37 = load i32, i32* @CS_MMAP_SIZE, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 3), align 4
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  store %struct.TYPE_4__* @cs_char_data, %struct.TYPE_4__** %39, align 8
  store i32 0, i32* %3, align 4
  br label %48

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @free_page(i64 %41)
  br label %43

43:                                               ; preds = %40, %21
  %44 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %45 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  br label %46

46:                                               ; preds = %43, %11
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @cs_hsi_start(i32*, %struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
