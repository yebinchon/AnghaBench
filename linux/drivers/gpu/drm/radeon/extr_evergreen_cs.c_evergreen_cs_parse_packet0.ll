; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_parse_packet0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_parse_packet0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32 }
%struct.radeon_cs_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*)* @evergreen_cs_parse_packet0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_cs_parse_packet0(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_cs_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %5, align 8
  %10 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %34, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ule i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %25 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @evergreen_packet0_check(%struct.radeon_cs_parser* %24, %struct.radeon_cs_packet* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 4
  store i32 %40, i32* %6, align 4
  br label %17

41:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @evergreen_packet0_check(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
