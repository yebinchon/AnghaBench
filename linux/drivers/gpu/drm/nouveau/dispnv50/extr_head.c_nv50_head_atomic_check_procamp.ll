; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_procamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_procamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head_atom = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nouveau_conn_atom = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_head_atom*, %struct.nv50_head_atom*, %struct.nouveau_conn_atom*)* @nv50_head_atomic_check_procamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_head_atomic_check_procamp(%struct.nv50_head_atom* %0, %struct.nv50_head_atom* %1, %struct.nouveau_conn_atom* %2) #0 {
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_head_atom*, align 8
  %6 = alloca %struct.nouveau_conn_atom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nv50_head_atom* %0, %struct.nv50_head_atom** %4, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %5, align 8
  store %struct.nouveau_conn_atom* %2, %struct.nouveau_conn_atom** %6, align 8
  %10 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %11 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 100
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 90
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 50, i32 0
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 2047
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = sdiv i32 %27, 100
  %29 = and i32 %28, 4095
  %30 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %31 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 2047
  %36 = sdiv i32 %35, 100
  %37 = and i32 %36, 4095
  %38 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %39 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %43 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
