; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_MAP_ICM_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_MAP_ICM_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_mailbox = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_MAP_ICM = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Mapped page at %llx to %llx for ICM.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_MAP_ICM_page(%struct.mthca_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mthca_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %11, i32 %12)
  store %struct.mthca_mailbox* %13, %struct.mthca_mailbox** %8, align 8
  %14 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %15 = call i64 @IS_ERR(%struct.mthca_mailbox* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.mthca_mailbox* %18)
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %22 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @cpu_to_be64(i64 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @cpu_to_be64(i64 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %33 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %34 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CMD_MAP_ICM, align 4
  %37 = load i32, i32* @CMD_TIME_CLASS_B, align 4
  %38 = call i32 @mthca_cmd(%struct.mthca_dev* %32, i32 %35, i32 1, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %40 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %41 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %39, %struct.mthca_mailbox* %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %20
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @mthca_dbg(%struct.mthca_dev* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %20
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @mthca_cmd(%struct.mthca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
