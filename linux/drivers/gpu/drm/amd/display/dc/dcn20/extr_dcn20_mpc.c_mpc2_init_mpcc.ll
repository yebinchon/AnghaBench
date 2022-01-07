; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_init_mpcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_init_mpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpcc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpcc*, i32)* @mpc2_init_mpcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc2_init_mpcc(%struct.mpcc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpcc*, align 8
  %4 = alloca i32, align 4
  store %struct.mpcc* %0, %struct.mpcc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %7 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %9 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %8, i32 0, i32 1
  store i32 15, i32* %9, align 4
  %10 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %11 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %13 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %16 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 255, i32* %17, align 4
  %18 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %19 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 255, i32* %20, align 8
  %21 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %22 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 4, i32* %23, align 4
  %24 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %25 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %28 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32 126976, i32* %29, align 8
  %30 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %31 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  store i32 126976, i32* %32, align 4
  %33 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %34 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  store i32 126976, i32* %35, align 8
  %36 = load %struct.mpcc*, %struct.mpcc** %3, align 8
  %37 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
