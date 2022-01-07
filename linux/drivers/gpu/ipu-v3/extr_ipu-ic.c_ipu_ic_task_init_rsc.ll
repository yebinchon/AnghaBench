; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_init_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_init_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { i32, i32, %struct.TYPE_2__*, %struct.ipu_ic_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.ipu_ic_priv = type { i32 }
%struct.ipu_ic_csc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_ic_task_init_rsc(%struct.ipu_ic* %0, %struct.ipu_ic_csc* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu_ic*, align 8
  %10 = alloca %struct.ipu_ic_csc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ipu_ic_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.ipu_ic* %0, %struct.ipu_ic** %9, align 8
  store %struct.ipu_ic_csc* %1, %struct.ipu_ic_csc** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %22 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %21, i32 0, i32 3
  %23 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %22, align 8
  store %struct.ipu_ic_priv* %23, %struct.ipu_ic_priv** %16, align 8
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %7
  %27 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @calc_resize_coeffs(%struct.ipu_ic* %27, i32 %28, i32 %29, i32* %18, i32* %17)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %20, align 4
  store i32 %34, i32* %8, align 4
  br label %87

35:                                               ; preds = %26
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 %36, 30
  %38 = load i32, i32* %18, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %37, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @calc_resize_coeffs(%struct.ipu_ic* %41, i32 %42, i32 %43, i32* %18, i32* %17)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %20, align 4
  store i32 %48, i32* %8, align 4
  br label %87

49:                                               ; preds = %35
  %50 = load i32, i32* %17, align 4
  %51 = shl i32 %50, 14
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %49, %7
  %57 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %16, align 8
  %58 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %19, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %64 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ipu_ic_write(%struct.ipu_ic* %61, i32 %62, i32 %67)
  %69 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %10, align 8
  %70 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %73 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %10, align 8
  %75 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %78 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ipu_ic*, %struct.ipu_ic** %9, align 8
  %80 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %10, align 8
  %81 = call i32 @init_csc(%struct.ipu_ic* %79, %struct.ipu_ic_csc* %80, i32 0)
  store i32 %81, i32* %20, align 4
  %82 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %16, align 8
  %83 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %19, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %20, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %56, %47, %33
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @calc_resize_coeffs(%struct.ipu_ic*, i32, i32, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_ic_write(%struct.ipu_ic*, i32, i32) #1

declare dso_local i32 @init_csc(%struct.ipu_ic*, %struct.ipu_ic_csc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
