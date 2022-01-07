; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_ctrl.c_deinstantiate_rng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_ctrl.c_deinstantiate_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@CAAM_CMD_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RNG4_MAX_HANDLES = common dso_local global i32 0, align 4
@JRSTA_SSRC_JUMP_HALT_CC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to deinstantiate RNG4 SH%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Deinstantiated RNG4 SH%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @deinstantiate_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinstantiate_rng(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @CAAM_CMD_SZ, align 4
  %11 = mul nsw i32 %10, 3
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64* @kmalloc(i32 %11, i32 %12)
  store i64* %13, i64** %6, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RNG4_MAX_HANDLES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @build_deinstantiation_desc(i64* %31, i32 %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @run_descriptor_deco0(%struct.device* %34, i64* %35, i64* %7)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @JRSTA_SSRC_JUMP_HALT_CC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %30
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %58

50:                                               ; preds = %42, %39
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_info(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %24
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %20

58:                                               ; preds = %46, %20
  %59 = load i64*, i64** %6, align 8
  %60 = call i32 @kfree(i64* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @build_deinstantiation_desc(i64*, i32) #1

declare dso_local i32 @run_descriptor_deco0(%struct.device*, i64*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
