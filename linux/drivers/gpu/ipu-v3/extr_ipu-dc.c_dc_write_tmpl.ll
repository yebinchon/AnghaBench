; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_dc_write_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_dc_write_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dc = type { %struct.ipu_dc_priv* }
%struct.ipu_dc_priv = type { i64 }

@WCLK = common dso_local global i32 0, align 4
@WRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_dc*, i32, i32, i32, i32, i32, i32, i32, i32)* @dc_write_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_write_tmpl(%struct.ipu_dc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ipu_dc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ipu_dc_priv*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ipu_dc* %0, %struct.ipu_dc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load %struct.ipu_dc*, %struct.ipu_dc** %10, align 8
  %23 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %22, i32 0, i32 0
  %24 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %23, align 8
  store %struct.ipu_dc_priv* %24, %struct.ipu_dc_priv** %19, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @WCLK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %9
  %29 = load i32, i32* %13, align 4
  %30 = shl i32 %29, 20
  %31 = and i32 %30, -1048576
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %13, align 4
  %33 = ashr i32 %32, 12
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 %34, 1
  %36 = or i32 %33, %35
  %37 = load i32, i32* %18, align 4
  %38 = shl i32 %37, 9
  %39 = or i32 %36, %38
  store i32 %39, i32* %21, align 4
  br label %91

40:                                               ; preds = %9
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @WRG, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %16, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %45, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  %51 = shl i32 %50, 11
  %52 = or i32 %48, %51
  %53 = load i32, i32* %13, align 4
  %54 = shl i32 %53, 15
  %55 = and i32 %54, -32768
  %56 = or i32 %52, %55
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 17
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 7
  %61 = or i32 %58, %60
  %62 = load i32, i32* %18, align 4
  %63 = shl i32 %62, 9
  %64 = or i32 %61, %63
  store i32 %64, i32* %21, align 4
  br label %90

65:                                               ; preds = %40
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %16, align 4
  %68 = shl i32 %67, 4
  %69 = or i32 %66, %68
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %15, align 4
  %72 = shl i32 %71, 11
  %73 = or i32 %69, %72
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  %76 = shl i32 %75, 15
  %77 = or i32 %73, %76
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %78, 20
  %80 = and i32 %79, -1048576
  %81 = or i32 %77, %80
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %13, align 4
  %83 = ashr i32 %82, 12
  %84 = load i32, i32* %12, align 4
  %85 = shl i32 %84, 4
  %86 = or i32 %83, %85
  %87 = load i32, i32* %18, align 4
  %88 = shl i32 %87, 9
  %89 = or i32 %86, %88
  store i32 %89, i32* %21, align 4
  br label %90

90:                                               ; preds = %65, %44
  br label %91

91:                                               ; preds = %90, %28
  %92 = load i32, i32* %20, align 4
  %93 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %19, align 8
  %94 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = call i32 @writel(i32 %92, i64 %99)
  %101 = load i32, i32* %21, align 4
  %102 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %19, align 8
  %103 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %105, 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = add nsw i64 %108, 4
  %110 = call i32 @writel(i32 %101, i64 %109)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
