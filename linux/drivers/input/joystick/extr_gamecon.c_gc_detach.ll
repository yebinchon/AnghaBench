; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.parport = type { i64 }

@GC_MAX_PORTS = common dso_local global i32 0, align 4
@gc_base = common dso_local global %struct.gc** null, align 8
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @gc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gc*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GC_MAX_PORTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.gc**, %struct.gc*** @gc_base, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gc*, %struct.gc** %10, i64 %12
  %14 = load %struct.gc*, %struct.gc** %13, align 8
  %15 = icmp ne %struct.gc* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = load %struct.gc**, %struct.gc*** @gc_base, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gc*, %struct.gc** %17, i64 %19
  %21 = load %struct.gc*, %struct.gc** %20, align 8
  %22 = getelementptr inbounds %struct.gc, %struct.gc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.parport*, %struct.parport** %2, align 8
  %25 = getelementptr inbounds %struct.parport, %struct.parport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %33

29:                                               ; preds = %16, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %28, %5
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @GC_MAX_PORTS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %83

38:                                               ; preds = %33
  %39 = load %struct.gc**, %struct.gc*** @gc_base, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.gc*, %struct.gc** %39, i64 %41
  %43 = load %struct.gc*, %struct.gc** %42, align 8
  store %struct.gc* %43, %struct.gc** %4, align 8
  %44 = load %struct.gc**, %struct.gc*** @gc_base, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.gc*, %struct.gc** %44, i64 %46
  store %struct.gc* null, %struct.gc** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %73, %38
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @GC_MAX_DEVICES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.gc*, %struct.gc** %4, align 8
  %54 = getelementptr inbounds %struct.gc, %struct.gc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.gc*, %struct.gc** %4, align 8
  %64 = getelementptr inbounds %struct.gc, %struct.gc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @input_unregister_device(i64 %70)
  br label %72

72:                                               ; preds = %62, %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.gc*, %struct.gc** %4, align 8
  %78 = getelementptr inbounds %struct.gc, %struct.gc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @parport_unregister_device(i32 %79)
  %81 = load %struct.gc*, %struct.gc** %4, align 8
  %82 = call i32 @kfree(%struct.gc* %81)
  br label %83

83:                                               ; preds = %76, %37
  ret void
}

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.gc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
