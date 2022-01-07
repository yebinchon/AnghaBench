; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_msg_mpeg_output_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_msg_mpeg_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx24120_initial_mpeg_config }
%struct.cx24120_initial_mpeg_config = type { i32, i32, i32 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@CMD_MPEG_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, i32)* @cx24120_msg_mpeg_output_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_msg_mpeg_output_config(%struct.cx24120_state* %0, i32 %1) #0 {
  %3 = alloca %struct.cx24120_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx24120_cmd, align 8
  %6 = alloca %struct.cx24120_initial_mpeg_config, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cx24120_state*, %struct.cx24120_state** %3, align 8
  %8 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast %struct.cx24120_initial_mpeg_config* %6 to i8*
  %12 = bitcast %struct.cx24120_initial_mpeg_config* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = load i32, i32* @CMD_MPEG_INIT, align 4
  %14 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 0
  store i32 7, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.cx24120_initial_mpeg_config, %struct.cx24120_initial_mpeg_config* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = shl i32 %22, 1
  %24 = getelementptr inbounds %struct.cx24120_initial_mpeg_config, %struct.cx24120_initial_mpeg_config* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 1
  %28 = or i32 %23, %27
  %29 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 5, i32* %34, align 4
  %35 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 2, i32* %37, align 4
  %38 = getelementptr inbounds %struct.cx24120_initial_mpeg_config, %struct.cx24120_initial_mpeg_config* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.cx24120_initial_mpeg_config, %struct.cx24120_initial_mpeg_config* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 240
  %48 = getelementptr inbounds %struct.cx24120_initial_mpeg_config, %struct.cx24120_initial_mpeg_config* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 16, i32* %57, align 4
  %58 = load %struct.cx24120_state*, %struct.cx24120_state** %3, align 8
  %59 = call i32 @cx24120_message_send(%struct.cx24120_state* %58, %struct.cx24120_cmd* %5)
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
