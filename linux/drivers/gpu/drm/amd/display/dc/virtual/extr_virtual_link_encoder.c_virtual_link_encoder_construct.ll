; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/virtual/extr_virtual_link_encoder.c_virtual_link_encoder_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/virtual/extr_virtual_link_encoder.c_virtual_link_encoder_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.encoder_init_data = type { i32, i32, i32, i32, i32 }

@virtual_lnk_enc_funcs = common dso_local global i32 0, align 4
@SIGNAL_TYPE_VIRTUAL = common dso_local global i32 0, align 4
@ENGINE_ID_VIRTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtual_link_encoder_construct(%struct.link_encoder* %0, %struct.encoder_init_data* %1) #0 {
  %3 = alloca %struct.link_encoder*, align 8
  %4 = alloca %struct.encoder_init_data*, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %3, align 8
  store %struct.encoder_init_data* %1, %struct.encoder_init_data** %4, align 8
  %5 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %6 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %5, i32 0, i32 7
  store i32* @virtual_lnk_enc_funcs, i32** %6, align 8
  %7 = load %struct.encoder_init_data*, %struct.encoder_init_data** %4, align 8
  %8 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.encoder_init_data*, %struct.encoder_init_data** %4, align 8
  %13 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.encoder_init_data*, %struct.encoder_init_data** %4, align 8
  %18 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %21 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.encoder_init_data*, %struct.encoder_init_data** %4, align 8
  %23 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %26 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.encoder_init_data*, %struct.encoder_init_data** %4, align 8
  %28 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %31 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SIGNAL_TYPE_VIRTUAL, align 4
  %33 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %34 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ENGINE_ID_VIRTUAL, align 4
  %36 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %37 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
