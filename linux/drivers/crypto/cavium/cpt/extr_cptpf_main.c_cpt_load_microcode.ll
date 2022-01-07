; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.microcode = type { i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Either the mcode is null or data is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"microcode size is 0\0A\00", align 1
@CPT_MAX_SE_CORES = common dso_local global i32 0, align 4
@CPT_MAX_TOTAL_CORES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*, %struct.microcode*)* @cpt_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_load_microcode(%struct.cpt_device* %0, %struct.microcode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpt_device*, align 8
  %5 = alloca %struct.microcode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %4, align 8
  store %struct.microcode* %1, %struct.microcode** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %12 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.microcode*, %struct.microcode** %5, align 8
  %16 = icmp ne %struct.microcode* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.microcode*, %struct.microcode** %5, align 8
  %19 = getelementptr inbounds %struct.microcode, %struct.microcode* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.device*, %struct.device** %10, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %17
  %28 = load %struct.microcode*, %struct.microcode** %5, align 8
  %29 = getelementptr inbounds %struct.microcode, %struct.microcode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %79

37:                                               ; preds = %27
  %38 = load %struct.microcode*, %struct.microcode** %5, align 8
  %39 = getelementptr inbounds %struct.microcode, %struct.microcode* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @CPT_MAX_SE_CORES, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @CPT_MAX_TOTAL_CORES, align 4
  store i32 %44, i32* %9, align 4
  br label %47

45:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  %46 = load i32, i32* @CPT_MAX_SE_CORES, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.microcode*, %struct.microcode** %5, align 8
  %54 = getelementptr inbounds %struct.microcode, %struct.microcode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %62 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @CPTX_PF_ENGX_UCODE_BASE(i32 0, i32 %64)
  %66 = load %struct.microcode*, %struct.microcode** %5, align 8
  %67 = getelementptr inbounds %struct.microcode, %struct.microcode* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @cpt_write_csr64(i32 %63, i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %60, %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %32, %22
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

declare dso_local i32 @CPTX_PF_ENGX_UCODE_BASE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
