; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_msix_entry = type { i32 }
%struct.bnxt_re_dev = type { i32, %struct.bnxt_qplib_nq*, %struct.bnxt_msix_entry*, %struct.bnxt_qplib_rcfw }
%struct.bnxt_qplib_nq = type { i32 }
%struct.bnxt_qplib_rcfw = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to re-start IRQs\0A\00", align 1
@BNXT_RE_AEQ_IDX = common dso_local global i64 0, align 8
@BNXT_RE_NQ_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to reinit NQ index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bnxt_msix_entry*)* @bnxt_re_start_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_start_irq(i8* %0, %struct.bnxt_msix_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bnxt_msix_entry*, align 8
  %5 = alloca %struct.bnxt_re_dev*, align 8
  %6 = alloca %struct.bnxt_msix_entry*, align 8
  %7 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %8 = alloca %struct.bnxt_qplib_nq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bnxt_msix_entry* %1, %struct.bnxt_msix_entry** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bnxt_re_dev*
  store %struct.bnxt_re_dev* %12, %struct.bnxt_re_dev** %5, align 8
  %13 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %13, i32 0, i32 2
  %15 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %14, align 8
  store %struct.bnxt_msix_entry* %15, %struct.bnxt_msix_entry** %6, align 8
  %16 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %16, i32 0, i32 3
  store %struct.bnxt_qplib_rcfw* %17, %struct.bnxt_qplib_rcfw** %7, align 8
  %18 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %4, align 8
  %19 = icmp ne %struct.bnxt_msix_entry* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %22 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %21)
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %93

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %38, i32 0, i32 2
  %40 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %50 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %6, align 8
  %51 = load i64, i64* @BNXT_RE_AEQ_IDX, align 8
  %52 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %50, i64 %51
  %53 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bnxt_qplib_rcfw_start_irq(%struct.bnxt_qplib_rcfw* %49, i32 %54, i32 0)
  %56 = load i32, i32* @BNXT_RE_NQ_IDX, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %90, %48
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %65 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %64, i32 0, i32 1
  %66 = load %struct.bnxt_qplib_nq*, %struct.bnxt_qplib_nq** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bnxt_qplib_nq, %struct.bnxt_qplib_nq* %66, i64 %69
  store %struct.bnxt_qplib_nq* %70, %struct.bnxt_qplib_nq** %8, align 8
  %71 = load %struct.bnxt_qplib_nq*, %struct.bnxt_qplib_nq** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %74, i64 %76
  %78 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bnxt_qplib_nq_start_irq(%struct.bnxt_qplib_nq* %71, i32 %73, i32 %79, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %5, align 8
  %85 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %84)
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @dev_warn(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %63
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %57

93:                                               ; preds = %20, %57
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_rcfw_start_irq(%struct.bnxt_qplib_rcfw*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_nq_start_irq(%struct.bnxt_qplib_nq*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
