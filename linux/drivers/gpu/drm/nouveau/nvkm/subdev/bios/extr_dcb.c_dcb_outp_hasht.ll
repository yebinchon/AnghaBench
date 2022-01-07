; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dcb.c_dcb_outp_hasht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dcb.c_dcb_outp_hasht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcb_output = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcb_output*)* @dcb_outp_hasht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcb_outp_hasht(%struct.dcb_output* %0) #0 {
  %2 = alloca %struct.dcb_output*, align 8
  store %struct.dcb_output* %0, %struct.dcb_output** %2, align 8
  %3 = load %struct.dcb_output*, %struct.dcb_output** %2, align 8
  %4 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 8
  %7 = load %struct.dcb_output*, %struct.dcb_output** %2, align 8
  %8 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 4
  %11 = or i32 %6, %10
  %12 = load %struct.dcb_output*, %struct.dcb_output** %2, align 8
  %13 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
