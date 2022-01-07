; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_client = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@__const.nvkm_client_fini.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"%s notify\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32)* @nvkm_client_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_client_fini(%struct.nvkm_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_client*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvkm_object*, %struct.nvkm_object** %3, align 8
  %9 = call %struct.nvkm_client* @nvkm_client(%struct.nvkm_object* %8)
  store %struct.nvkm_client* %9, %struct.nvkm_client** %5, align 8
  %10 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.nvkm_client_fini.name to i8*), i64 16, i1 false)
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @nvif_debug(%struct.nvkm_object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nvkm_client*, %struct.nvkm_client** %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.nvkm_client*, %struct.nvkm_client** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @nvkm_client_notify_put(%struct.nvkm_client* %25, i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %17

31:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.nvkm_client* @nvkm_client(%struct.nvkm_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvif_debug(%struct.nvkm_object*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @nvkm_client_notify_put(%struct.nvkm_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
