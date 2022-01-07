; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp4_core.c_cyttsp4_free_si_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp4_core.c_cyttsp4_free_si_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp4 = type { %struct.cyttsp4_sysinfo }
%struct.cyttsp4_sysinfo = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyttsp4*)* @cyttsp4_free_si_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyttsp4_free_si_ptrs(%struct.cyttsp4* %0) #0 {
  %2 = alloca %struct.cyttsp4*, align 8
  %3 = alloca %struct.cyttsp4_sysinfo*, align 8
  store %struct.cyttsp4* %0, %struct.cyttsp4** %2, align 8
  %4 = load %struct.cyttsp4*, %struct.cyttsp4** %2, align 8
  %5 = getelementptr inbounds %struct.cyttsp4, %struct.cyttsp4* %4, i32 0, i32 0
  store %struct.cyttsp4_sysinfo* %5, %struct.cyttsp4_sysinfo** %3, align 8
  %6 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %7 = icmp ne %struct.cyttsp4_sysinfo* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %11 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %16 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %21 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %26 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %31 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %36 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %41 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kfree(i32 %42)
  %44 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %45 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %49 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kfree(i32 %50)
  %52 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %3, align 8
  %53 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kfree(i32 %54)
  br label %56

56:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
