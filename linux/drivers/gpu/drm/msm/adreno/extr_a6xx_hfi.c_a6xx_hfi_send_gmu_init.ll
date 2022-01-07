; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_gmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_gmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.a6xx_hfi_msg_gmu_init_cmd = type { i32, i8*, i8*, i32 }

@HFI_H2F_MSG_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*, i32)* @a6xx_hfi_send_gmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_send_gmu_init(%struct.a6xx_gmu* %0, i32 %1) #0 {
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.a6xx_hfi_msg_gmu_init_cmd, align 8
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.a6xx_hfi_msg_gmu_init_cmd* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 32, i1 false)
  %7 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %8 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, %struct.a6xx_hfi_msg_gmu_init_cmd* %5, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %15 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, %struct.a6xx_hfi_msg_gmu_init_cmd* %5, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, %struct.a6xx_hfi_msg_gmu_init_cmd* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %24 = load i32, i32* @HFI_H2F_MSG_INIT, align 4
  %25 = call i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu* %23, i32 %24, %struct.a6xx_hfi_msg_gmu_init_cmd* %5, i32 32, i32* null, i32 0)
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu*, i32, %struct.a6xx_hfi_msg_gmu_init_cmd*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
