; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_client.c_nvif_client_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_client.c_nvif_client_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_client = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvif_client_fini(%struct.nvif_client* %0) #0 {
  %2 = alloca %struct.nvif_client*, align 8
  store %struct.nvif_client* %0, %struct.nvif_client** %2, align 8
  %3 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %4 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %3, i32 0, i32 1
  %5 = call i32 @nvif_object_fini(%struct.TYPE_4__* %4)
  %6 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %7 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %12 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %19 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %24 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %26)
  br label %28

28:                                               ; preds = %17, %10
  %29 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %30 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %29, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @nvif_object_fini(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
