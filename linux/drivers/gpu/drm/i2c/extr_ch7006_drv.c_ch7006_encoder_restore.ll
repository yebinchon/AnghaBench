; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @ch7006_encoder_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7006_encoder_restore(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ch7006_priv*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %7)
  store %struct.ch7006_priv* %8, %struct.ch7006_priv** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call i32 @ch7006_dbg(%struct.i2c_client* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %12, i32 0, i32 0
  %14 = call i32 @ch7006_state_load(%struct.i2c_client* %11, i32* %13)
  ret void
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*) #1

declare dso_local i32 @ch7006_state_load(%struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
