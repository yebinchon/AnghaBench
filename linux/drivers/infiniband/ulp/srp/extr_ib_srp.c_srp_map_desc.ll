; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_map_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_map_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_map_state = type { i32, i32, %struct.srp_direct_buf* }
%struct.srp_direct_buf = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_map_state*, i32, i32, i32)* @srp_map_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_map_desc(%struct.srp_map_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.srp_map_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.srp_direct_buf*, align 8
  store %struct.srp_map_state* %0, %struct.srp_map_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.srp_map_state*, %struct.srp_map_state** %5, align 8
  %11 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %10, i32 0, i32 2
  %12 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  store %struct.srp_direct_buf* %12, %struct.srp_direct_buf** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cpu_to_be64(i32 %18)
  %20 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %21 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %25 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %29 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.srp_map_state*, %struct.srp_map_state** %5, align 8
  %32 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.srp_map_state*, %struct.srp_map_state** %5, align 8
  %36 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %35, i32 0, i32 2
  %37 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %36, align 8
  %38 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %37, i32 1
  store %struct.srp_direct_buf* %38, %struct.srp_direct_buf** %36, align 8
  %39 = load %struct.srp_map_state*, %struct.srp_map_state** %5, align 8
  %40 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
