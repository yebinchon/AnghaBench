; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_fc_ring_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_fc_ring_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_fc_db_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scmi_fc_db_info*)* @scmi_perf_fc_ring_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmi_perf_fc_ring_db(%struct.scmi_fc_db_info* %0) #0 {
  %2 = alloca %struct.scmi_fc_db_info*, align 8
  %3 = alloca i32, align 4
  store %struct.scmi_fc_db_info* %0, %struct.scmi_fc_db_info** %2, align 8
  %4 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %5 = icmp ne %struct.scmi_fc_db_info* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %8 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %57

12:                                               ; preds = %6
  %13 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %14 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @SCMI_PERF_FC_RING_DB(i32 8)
  br label %57

19:                                               ; preds = %12
  %20 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %21 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @SCMI_PERF_FC_RING_DB(i32 16)
  br label %56

26:                                               ; preds = %19
  %27 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %28 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @SCMI_PERF_FC_RING_DB(i32 32)
  br label %55

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  %34 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %35 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %40 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ioread64_hi_lo(i32 %41)
  %43 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %44 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %49 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.scmi_fc_db_info*, %struct.scmi_fc_db_info** %2, align 8
  %52 = getelementptr inbounds %struct.scmi_fc_db_info, %struct.scmi_fc_db_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iowrite64_hi_lo(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %31
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %11, %56, %17
  ret void
}

declare dso_local i32 @SCMI_PERF_FC_RING_DB(i32) #1

declare dso_local i32 @ioread64_hi_lo(i32) #1

declare dso_local i32 @iowrite64_hi_lo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
