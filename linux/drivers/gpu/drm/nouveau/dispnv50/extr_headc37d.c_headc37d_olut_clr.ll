; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc37d.c_headc37d_olut_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc37d.c_headc37d_olut_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nv50_dmac }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_head*)* @headc37d_olut_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @headc37d_olut_clr(%struct.nv50_head* %0) #0 {
  %2 = alloca %struct.nv50_head*, align 8
  %3 = alloca %struct.nv50_dmac*, align 8
  %4 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %2, align 8
  %5 = load %struct.nv50_head*, %struct.nv50_head** %2, align 8
  %6 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_8__* @nv50_disp(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.nv50_dmac* %13, %struct.nv50_dmac** %3, align 8
  %14 = load %struct.nv50_dmac*, %struct.nv50_dmac** %3, align 8
  %15 = call i32* @evo_wait(%struct.nv50_dmac* %14, i32 2)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.nv50_head*, %struct.nv50_head** %2, align 8
  %20 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 1024
  %24 = add nsw i32 8364, %23
  %25 = call i32 @evo_mthd(i32* %18, i32 %24, i32 1)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @evo_data(i32* %26, i32 0)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.nv50_dmac*, %struct.nv50_dmac** %3, align 8
  %30 = call i32 @evo_kick(i32* %28, %struct.nv50_dmac* %29)
  br label %31

31:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.TYPE_8__* @nv50_disp(i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_dmac*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_dmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
