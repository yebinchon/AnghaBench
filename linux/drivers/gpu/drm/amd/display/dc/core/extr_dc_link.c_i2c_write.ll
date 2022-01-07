; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_command = type { i32, i32, %struct.i2c_command*, i32, i32*, i32, i32, i32, i32 }
%struct.i2c_payload = type { i32, i32, %struct.i2c_payload*, i32, i32*, i32, i32, i32, i32 }

@I2C_COMMAND_ENGINE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, i32, i32*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(%struct.pipe_ctx* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_command, align 8
  %11 = alloca %struct.i2c_payload, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.i2c_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = bitcast %struct.i2c_payload* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  %14 = call i32 @memset(%struct.i2c_payload* %11, i32 0, i32 48)
  %15 = bitcast %struct.i2c_command* %10 to %struct.i2c_payload*
  %16 = call i32 @memset(%struct.i2c_payload* %15, i32 0, i32 48)
  %17 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @I2C_COMMAND_ENGINE_DEFAULT, align 4
  %19 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 7
  store i32 %18, i32* %19, align 8
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %11, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %11, i32 0, i32 4
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %11, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %11, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = bitcast %struct.i2c_payload* %11 to %struct.i2c_command*
  %39 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  store %struct.i2c_command* %38, %struct.i2c_command** %39, align 8
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %struct.i2c_command* %10 to %struct.i2c_payload*
  %51 = call i64 @dm_helpers_submit_i2c(%struct.TYPE_8__* %44, i32 %49, %struct.i2c_payload* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %55

54:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.i2c_payload*, i32, i32) #2

declare dso_local i64 @dm_helpers_submit_i2c(%struct.TYPE_8__*, i32, %struct.i2c_payload*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
