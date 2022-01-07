; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_flush_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_flush_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.nv50_head*)*, i32 (%struct.nv50_head*)*, i32 (%struct.nv50_head*)* }
%struct.nv50_head_atom = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%union.nv50_head_atom_mask = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_head_flush_clr(%struct.nv50_head* %0, %struct.nv50_head_atom* %1, i32 %2) #0 {
  %4 = alloca %struct.nv50_head*, align 8
  %5 = alloca %struct.nv50_head_atom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.nv50_head_atom_mask, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %4, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %union.nv50_head_atom_mask* %7 to i32*
  %9 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %10 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi i32 [ 0, %15 ], [ %20, %16 ]
  %23 = xor i32 %22, -1
  %24 = and i32 %12, %23
  store i32 %24, i32* %8, align 8
  %25 = bitcast %union.nv50_head_atom_mask* %7 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32 (%struct.nv50_head*)*, i32 (%struct.nv50_head*)** %32, align 8
  %34 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %35 = call i32 %33(%struct.nv50_head* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = bitcast %union.nv50_head_atom_mask* %7 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %42 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32 (%struct.nv50_head*)*, i32 (%struct.nv50_head*)** %44, align 8
  %46 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %47 = call i32 %45(%struct.nv50_head* %46)
  br label %48

48:                                               ; preds = %40, %36
  %49 = bitcast %union.nv50_head_atom_mask* %7 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %54 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (%struct.nv50_head*)*, i32 (%struct.nv50_head*)** %56, align 8
  %58 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %59 = call i32 %57(%struct.nv50_head* %58)
  br label %60

60:                                               ; preds = %52, %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
