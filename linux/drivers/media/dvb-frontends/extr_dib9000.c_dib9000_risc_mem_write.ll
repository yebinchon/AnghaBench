; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_mem_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_mem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.dib9000_fe_memory_map* }
%struct.dib9000_fe_memory_map = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i64, i64*)* @dib9000_risc_mem_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_risc_mem_write(%struct.dib9000_state* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib9000_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dib9000_fe_memory_map*, align 8
  store %struct.dib9000_state* %0, %struct.dib9000_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %13, i64 %14
  store %struct.dib9000_fe_memory_map* %15, %struct.dib9000_fe_memory_map** %8, align 8
  %16 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %17 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %27 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i64 @mutex_lock_interruptible(i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINTR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %25
  %37 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @dib9000_risc_mem_setup(%struct.dib9000_state* %37, i64 %38)
  %40 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %8, align 8
  %43 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dib9000_risc_mem_write_chunks(%struct.dib9000_state* %40, i64* %41, i32 %44)
  %46 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %47 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %36, %32, %22
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib9000_risc_mem_setup(%struct.dib9000_state*, i64) #1

declare dso_local i32 @dib9000_risc_mem_write_chunks(%struct.dib9000_state*, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
