; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_do_copro_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_do_copro_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i64, i32, i64 }

@CMD_STAT_REG = common dso_local global i64 0, align 8
@CVIC_TRIG_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Timeout waiting for coprocessor completion\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@STAT_COMPLETE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, i32)* @do_copro_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_copro_command(%struct.fsi_master_acf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master_acf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10000000, i32* %6, align 4
  %8 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @trace_fsi_master_acf_copro_command(%struct.fsi_master_acf* %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %13 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CMD_STAT_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32be(i32 %11, i64 %16)
  %18 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %19 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %24 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CVIC_TRIG_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite32(i32 2, i64 %27)
  br label %29

29:                                               ; preds = %22, %2
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %36 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %30
  %42 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %43 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CMD_STAT_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @ioread8(i64 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @STAT_COMPLETE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 255
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i1 [ true, %48 ], [ %54, %52 ]
  br i1 %56, label %30, label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @STAT_COMPLETE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %76

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %73 [
    i32 130, label %64
    i32 129, label %67
    i32 128, label %70
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %76

67:                                               ; preds = %62
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @ESHUTDOWN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @ENXIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61, %34
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @trace_fsi_master_acf_copro_command(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
