; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_output_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_output_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_device = type { i32 }
%struct.stm_output = type { i64, i32, i32, i32 }
%struct.stp_master = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_device*, %struct.stm_output*)* @stm_output_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_output_claim(%struct.stm_device* %0, %struct.stm_output* %1) #0 {
  %3 = alloca %struct.stm_device*, align 8
  %4 = alloca %struct.stm_output*, align 8
  %5 = alloca %struct.stp_master*, align 8
  store %struct.stm_device* %0, %struct.stm_device** %3, align 8
  store %struct.stm_output* %1, %struct.stm_output** %4, align 8
  %6 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %7 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %8 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.stp_master* @stm_master(%struct.stm_device* %6, i32 %9)
  store %struct.stp_master* %10, %struct.stp_master** %5, align 8
  %11 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %12 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %15 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %14, i32 0, i32 2
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.stp_master*, %struct.stp_master** %5, align 8
  %18 = getelementptr inbounds %struct.stp_master, %struct.stp_master* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %21 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %48

28:                                               ; preds = %2
  %29 = load %struct.stp_master*, %struct.stp_master** %5, align 8
  %30 = getelementptr inbounds %struct.stp_master, %struct.stp_master* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %34 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %37 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ilog2(i64 %38)
  %40 = call i32 @bitmap_allocate_region(i32* %32, i32 %35, i32 %39)
  %41 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %42 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.stp_master*, %struct.stp_master** %5, align 8
  %45 = getelementptr inbounds %struct.stp_master, %struct.stp_master* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.stp_master* @stm_master(%struct.stm_device*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @bitmap_allocate_region(i32*, i32, i32) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
