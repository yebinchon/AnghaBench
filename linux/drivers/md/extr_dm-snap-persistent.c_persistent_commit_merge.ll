; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_commit_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_commit_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32 }
%struct.pstore = type { i32, i32, i64 }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, i32)* @persistent_commit_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_commit_merge(%struct.dm_exception_store* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_exception_store*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pstore*, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %10 = call %struct.pstore* @get_info(%struct.dm_exception_store* %9)
  store %struct.pstore* %10, %struct.pstore** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pstore*, %struct.pstore** %8, align 8
  %13 = getelementptr inbounds %struct.pstore, %struct.pstore* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.pstore*, %struct.pstore** %8, align 8
  %24 = load %struct.pstore*, %struct.pstore** %8, align 8
  %25 = getelementptr inbounds %struct.pstore, %struct.pstore* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @clear_exception(%struct.pstore* %23, i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.pstore*, %struct.pstore** %8, align 8
  %36 = load i32, i32* @REQ_OP_WRITE, align 4
  %37 = load i32, i32* @REQ_PREFLUSH, align 4
  %38 = load i32, i32* @REQ_FUA, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @area_io(%struct.pstore* %35, i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.pstore*, %struct.pstore** %8, align 8
  %48 = getelementptr inbounds %struct.pstore, %struct.pstore* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.pstore*, %struct.pstore** %8, align 8
  %52 = load %struct.pstore*, %struct.pstore** %8, align 8
  %53 = getelementptr inbounds %struct.pstore, %struct.pstore* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @area_location(%struct.pstore* %51, i32 %54)
  %56 = load %struct.pstore*, %struct.pstore** %8, align 8
  %57 = getelementptr inbounds %struct.pstore, %struct.pstore* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %55, %59
  %61 = add nsw i64 %60, 1
  %62 = load %struct.pstore*, %struct.pstore** %8, align 8
  %63 = getelementptr inbounds %struct.pstore, %struct.pstore* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %45, %43
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_exception(%struct.pstore*, i32) #1

declare dso_local i32 @area_io(%struct.pstore*, i32, i32) #1

declare dso_local i64 @area_location(%struct.pstore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
