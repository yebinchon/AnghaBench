; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_memmbx_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_memmbx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FE_MM_RW_SYNC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i64)* @dib9000_fw_memmbx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_memmbx_sync(%struct.dib9000_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib9000_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dib9000_state* %0, %struct.dib9000_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 10, i64* %6, align 8
  %7 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %8 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %16 = load i32, i32* @FE_MM_RW_SYNC, align 4
  %17 = call i32 @dib9000_risc_mem_write(%struct.dib9000_state* %15, i32 %16, i64* %5)
  br label %18

18:                                               ; preds = %36, %14
  %19 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %20 = load i32, i32* @FE_MM_RW_SYNC, align 4
  %21 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %22 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %19, i32 %20, i64* %23, i32 1)
  br label %25

25:                                               ; preds = %18
  %26 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %27 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %6, align 8
  %35 = icmp ne i64 %33, 0
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi i1 [ false, %25 ], [ %35, %32 ]
  br i1 %37, label %18, label %38

38:                                               ; preds = %36
  %39 = load i64, i64* %6, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %41, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dib9000_risc_mem_write(%struct.dib9000_state*, i32, i64*) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
