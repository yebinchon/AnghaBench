; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i64, i64* }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@TALITOS1_MCR_SWR = common dso_local global i32 0, align 4
@TALITOS2_MCR_SWR = common dso_local global i32 0, align 4
@TALITOS_MCR = common dso_local global i64 0, align 8
@TALITOS_MCR_RCA1 = common dso_local global i32 0, align 4
@TALITOS_MCR_RCA3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.talitos_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %8)
  store %struct.talitos_private* %9, %struct.talitos_private** %4, align 8
  %10 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %12 = call i32 @has_ftr_sec1(%struct.talitos_private* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TALITOS1_MCR_SWR, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TALITOS2_MCR_SWR, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %7, align 4
  %21 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %22 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TALITOS_MCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @setbits32(i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %44, %19
  %29 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %30 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TALITOS_MCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @in_be32(i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %28
  %43 = phi i1 [ false, %28 ], [ %41, %38 ]
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = call i32 (...) @cpu_relax()
  br label %28

46:                                               ; preds = %42
  %47 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %48 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load i32, i32* @TALITOS_MCR_RCA1, align 4
  %55 = load i32, i32* @TALITOS_MCR_RCA3, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %58 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TALITOS_MCR, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @setbits32(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %46
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
