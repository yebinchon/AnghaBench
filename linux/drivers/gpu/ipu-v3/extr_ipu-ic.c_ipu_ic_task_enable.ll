; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64, %struct.ipu_ic_priv* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ipu_ic_priv = type { i32 }

@IC_CONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_ic_task_enable(%struct.ipu_ic* %0) #0 {
  %2 = alloca %struct.ipu_ic*, align 8
  %3 = alloca %struct.ipu_ic_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ipu_ic* %0, %struct.ipu_ic** %2, align 8
  %6 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %7 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %6, i32 0, i32 6
  %8 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %7, align 8
  store %struct.ipu_ic_priv* %8, %struct.ipu_ic_priv** %3, align 8
  %9 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %14 = load i32, i32* @IC_CONF, align 4
  %15 = call i32 @ipu_ic_read(%struct.ipu_ic* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %17 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %24 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %29 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %1
  %36 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %37 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %41 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %47 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %35
  %54 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %55 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %60 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %67 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %74 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %78 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %58
  %83 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %84 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %82, %58
  br label %91

91:                                               ; preds = %90, %53
  %92 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IC_CONF, align 4
  %95 = call i32 @ipu_ic_write(%struct.ipu_ic* %92, i32 %93, i32 %94)
  %96 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %97 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %96, i32 0, i32 0
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_ic_read(%struct.ipu_ic*, i32) #1

declare dso_local i32 @ipu_ic_write(%struct.ipu_ic*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
