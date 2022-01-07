; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_mem_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.dib9000_fe_memory_map* }
%struct.dib9000_fe_memory_map = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib9000_state*, i32)* @dib9000_risc_mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib9000_risc_mem_setup(%struct.dib9000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib9000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib9000_fe_memory_map*, align 8
  store %struct.dib9000_state* %0, %struct.dib9000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %7 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 127
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %10, i64 %13
  store %struct.dib9000_fe_memory_map* %14, %struct.dib9000_fe_memory_map** %5, align 8
  %15 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %16 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %5, align 8
  %28 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 67
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %22
  br label %48

32:                                               ; preds = %26, %2
  %33 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %34 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %5, align 8
  %35 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %5, align 8
  %38 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 128
  %42 = call i32 @dib9000_risc_mem_setup_cmd(%struct.dib9000_state* %33, i32 %36, i32 %39, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %45 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  br label %48

48:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @dib9000_risc_mem_setup_cmd(%struct.dib9000_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
