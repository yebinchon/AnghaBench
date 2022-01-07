; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_link_encoder.c_enc2_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_link_encoder.c_enc2_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.dcn10_link_encoder = type { i32 }

@AUX_DPHY_RX_CONTROL0 = common dso_local global i32 0, align 4
@AUX_DPHY_TX_CONTROL = common dso_local global i32 0, align 4
@TMDS_CTL_BITS = common dso_local global i32 0, align 4
@TMDS_CTL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc2_hw_init(%struct.link_encoder* %0) #0 {
  %2 = alloca %struct.link_encoder*, align 8
  %3 = alloca %struct.dcn10_link_encoder*, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %2, align 8
  %4 = load %struct.link_encoder*, %struct.link_encoder** %2, align 8
  %5 = call %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder* %4)
  store %struct.dcn10_link_encoder* %5, %struct.dcn10_link_encoder** %3, align 8
  %6 = load i32, i32* @AUX_DPHY_RX_CONTROL0, align 4
  %7 = call i32 @AUX_REG_WRITE(i32 %6, i32 272437520)
  %8 = load i32, i32* @AUX_DPHY_TX_CONTROL, align 4
  %9 = call i32 @AUX_REG_WRITE(i32 %8, i32 138362)
  %10 = load i32, i32* @TMDS_CTL_BITS, align 4
  %11 = load i32, i32* @TMDS_CTL0, align 4
  %12 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 1)
  %13 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %14 = call i32 @dcn10_aux_initialize(%struct.dcn10_link_encoder* %13)
  ret void
}

declare dso_local %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @AUX_REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @dcn10_aux_initialize(%struct.dcn10_link_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
