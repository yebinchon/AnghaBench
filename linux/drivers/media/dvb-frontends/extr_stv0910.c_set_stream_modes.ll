; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_stream_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_stream_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv*, %struct.dtv_frontend_properties*)* @set_stream_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_stream_modes(%struct.stv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.stv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.stv* %0, %struct.stv** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %5 = load %struct.stv*, %struct.stv** %3, align 8
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %7 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_isi(%struct.stv* %5, i32 %8)
  %10 = load %struct.stv*, %struct.stv** %3, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_pls(%struct.stv* %10, i32 %13)
  ret void
}

declare dso_local i32 @set_isi(%struct.stv*, i32) #1

declare dso_local i32 @set_pls(%struct.stv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
