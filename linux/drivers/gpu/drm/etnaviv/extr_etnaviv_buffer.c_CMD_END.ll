; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_CMD_END.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_CMD_END.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_cmdbuf = type { i32 }

@VIV_FE_END_HEADER_OP_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_cmdbuf*)* @CMD_END to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CMD_END(%struct.etnaviv_cmdbuf* %0) #0 {
  %2 = alloca %struct.etnaviv_cmdbuf*, align 8
  store %struct.etnaviv_cmdbuf* %0, %struct.etnaviv_cmdbuf** %2, align 8
  %3 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ALIGN(i32 %5, i32 8)
  %7 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %2, align 8
  %8 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %2, align 8
  %10 = load i32, i32* @VIV_FE_END_HEADER_OP_END, align 4
  %11 = call i32 @OUT(%struct.etnaviv_cmdbuf* %9, i32 %10)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @OUT(%struct.etnaviv_cmdbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
