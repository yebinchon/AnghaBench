; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_vco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"xtal=%d, vco=%d, inv_vco=%lld\0A\00", align 1
@CMD_VCO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*)* @cx24120_set_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_set_vco(%struct.cx24120_state* %0) #0 {
  %2 = alloca %struct.cx24120_state*, align 8
  %3 = alloca %struct.cx24120_cmd, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %2, align 8
  %8 = load %struct.cx24120_state*, %struct.cx24120_state** %2, align 8
  %9 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 10
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 0, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cx24120_state*, %struct.cx24120_state** %2, align 8
  %20 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @CMD_VCO_SET, align 4
  %28 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 0
  store i32 12, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  store i32 3, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  store i32 6, i32* %74, align 4
  %75 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 9
  store i32 3, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 10
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %3, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 11
  store i32 %85, i32* %88, align 4
  %89 = load %struct.cx24120_state*, %struct.cx24120_state** %2, align 8
  %90 = call i32 @cx24120_message_send(%struct.cx24120_state* %89, %struct.cx24120_cmd* %3)
  ret i32 %90
}

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
