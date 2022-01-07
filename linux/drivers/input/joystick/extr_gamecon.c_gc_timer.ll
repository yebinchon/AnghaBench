; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i32, i64* }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@GC_N64 = common dso_local global i64 0, align 8
@GC_NES = common dso_local global i64 0, align 8
@GC_SNES = common dso_local global i64 0, align 8
@GC_SNESMOUSE = common dso_local global i64 0, align 8
@GC_MULTI = common dso_local global i64 0, align 8
@GC_MULTI2 = common dso_local global i64 0, align 8
@GC_PSX = common dso_local global i64 0, align 8
@GC_DDR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@GC_REFRESH_TIME = common dso_local global i64 0, align 8
@gc = common dso_local global %struct.gc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @gc_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.gc*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.gc*, %struct.gc** %3, align 8
  %5 = ptrtoint %struct.gc* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.gc* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.gc* %8, %struct.gc** %3, align 8
  %9 = load %struct.gc*, %struct.gc** %3, align 8
  %10 = getelementptr inbounds %struct.gc, %struct.gc* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @GC_N64, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.gc*, %struct.gc** %3, align 8
  %18 = call i32 @gc_n64_process_packet(%struct.gc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.gc*, %struct.gc** %3, align 8
  %21 = getelementptr inbounds %struct.gc, %struct.gc* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @GC_NES, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %19
  %28 = load %struct.gc*, %struct.gc** %3, align 8
  %29 = getelementptr inbounds %struct.gc, %struct.gc* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @GC_SNES, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.gc*, %struct.gc** %3, align 8
  %37 = getelementptr inbounds %struct.gc, %struct.gc* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @GC_SNESMOUSE, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %27, %19
  %44 = load %struct.gc*, %struct.gc** %3, align 8
  %45 = call i32 @gc_nes_process_packet(%struct.gc* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.gc*, %struct.gc** %3, align 8
  %48 = getelementptr inbounds %struct.gc, %struct.gc* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @GC_MULTI, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load %struct.gc*, %struct.gc** %3, align 8
  %56 = getelementptr inbounds %struct.gc, %struct.gc* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @GC_MULTI2, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54, %46
  %63 = load %struct.gc*, %struct.gc** %3, align 8
  %64 = call i32 @gc_multi_process_packet(%struct.gc* %63)
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.gc*, %struct.gc** %3, align 8
  %67 = getelementptr inbounds %struct.gc, %struct.gc* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @GC_PSX, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load %struct.gc*, %struct.gc** %3, align 8
  %75 = getelementptr inbounds %struct.gc, %struct.gc* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @GC_DDR, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73, %65
  %82 = load %struct.gc*, %struct.gc** %3, align 8
  %83 = call i32 @gc_psx_process_packet(%struct.gc* %82)
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.gc*, %struct.gc** %3, align 8
  %86 = getelementptr inbounds %struct.gc, %struct.gc* %85, i32 0, i32 0
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i64, i64* @GC_REFRESH_TIME, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @mod_timer(i32* %86, i64 %89)
  ret void
}

declare dso_local %struct.gc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @gc_n64_process_packet(%struct.gc*) #1

declare dso_local i32 @gc_nes_process_packet(%struct.gc*) #1

declare dso_local i32 @gc_multi_process_packet(%struct.gc*) #1

declare dso_local i32 @gc_psx_process_packet(%struct.gc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
