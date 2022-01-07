; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_connector_attach_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_connector_attach_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_connector = type { i32, %struct.gma_encoder* }
%struct.gma_encoder = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_connector_attach_encoder(%struct.gma_connector* %0, %struct.gma_encoder* %1) #0 {
  %3 = alloca %struct.gma_connector*, align 8
  %4 = alloca %struct.gma_encoder*, align 8
  store %struct.gma_connector* %0, %struct.gma_connector** %3, align 8
  store %struct.gma_encoder* %1, %struct.gma_encoder** %4, align 8
  %5 = load %struct.gma_encoder*, %struct.gma_encoder** %4, align 8
  %6 = load %struct.gma_connector*, %struct.gma_connector** %3, align 8
  %7 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %6, i32 0, i32 1
  store %struct.gma_encoder* %5, %struct.gma_encoder** %7, align 8
  %8 = load %struct.gma_connector*, %struct.gma_connector** %3, align 8
  %9 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %8, i32 0, i32 0
  %10 = load %struct.gma_encoder*, %struct.gma_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %10, i32 0, i32 0
  %12 = call i32 @drm_connector_attach_encoder(i32* %9, i32* %11)
  ret void
}

declare dso_local i32 @drm_connector_attach_encoder(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
