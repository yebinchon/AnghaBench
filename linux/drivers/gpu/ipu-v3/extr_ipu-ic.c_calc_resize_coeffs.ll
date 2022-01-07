; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_calc_resize_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_calc_resize_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { %struct.ipu_ic_priv* }
%struct.ipu_ic_priv = type { %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unsupported resize (in_size > 4096)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported resize (out_size > 1024)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unsupported downsize\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Warning! Overflow on resize coeff.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_ic*, i32, i32, i32*, i32*)* @calc_resize_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_resize_coeffs(%struct.ipu_ic* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_ic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ipu_ic_priv*, align 8
  %13 = alloca %struct.ipu_soc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ipu_ic* %0, %struct.ipu_ic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.ipu_ic*, %struct.ipu_ic** %7, align 8
  %17 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %16, i32 0, i32 0
  %18 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %17, align 8
  store %struct.ipu_ic_priv* %18, %struct.ipu_ic_priv** %12, align 8
  %19 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %12, align 8
  %20 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %19, i32 0, i32 0
  %21 = load %struct.ipu_soc*, %struct.ipu_soc** %20, align 8
  store %struct.ipu_soc* %21, %struct.ipu_soc** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 4096
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.ipu_soc*, %struct.ipu_soc** %13, align 8
  %26 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %97

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 1024
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.ipu_soc*, %struct.ipu_soc** %13, align 8
  %36 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %97

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 2
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.ipu_soc*, %struct.ipu_soc** %13, align 8
  %48 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %97

53:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %68, %53
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %56, 1024
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 2
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 2
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i1 [ false, %58 ], [ %65, %63 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load i32, i32* %14, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %55

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 8192, %78
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = sdiv i64 %79, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp sge i64 %88, 16384
  br i1 %89, label %90, label %96

90:                                               ; preds = %73
  %91 = load %struct.ipu_soc*, %struct.ipu_soc** %13, align 8
  %92 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32*, i32** %10, align 8
  store i32 16383, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %73
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %46, %34, %24
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
