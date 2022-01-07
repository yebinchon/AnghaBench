; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccg = type { i32 }
%struct.dcn_dccg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DPPCLK_DTO_CTRL = common dso_local global i32 0, align 4
@DPPCLK_DTO_DB_EN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccg2_init(%struct.dccg* %0) #0 {
  %2 = alloca %struct.dccg*, align 8
  %3 = alloca %struct.dcn_dccg*, align 8
  store %struct.dccg* %0, %struct.dccg** %2, align 8
  %4 = load %struct.dccg*, %struct.dccg** %2, align 8
  %5 = call %struct.dcn_dccg* @TO_DCN_DCCG(%struct.dccg* %4)
  store %struct.dcn_dccg* %5, %struct.dcn_dccg** %3, align 8
  %6 = load %struct.dcn_dccg*, %struct.dcn_dccg** %3, align 8
  %7 = getelementptr inbounds %struct.dcn_dccg, %struct.dcn_dccg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %52 [
    i32 6, label %16
    i32 5, label %22
    i32 4, label %28
    i32 3, label %34
    i32 2, label %40
    i32 1, label %46
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %18 = load i32*, i32** @DPPCLK_DTO_DB_EN, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_UPDATE(i32 %17, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %1, %16
  %23 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %24 = load i32*, i32** @DPPCLK_DTO_DB_EN, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_UPDATE(i32 %23, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %1, %22
  %29 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %30 = load i32*, i32** @DPPCLK_DTO_DB_EN, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @REG_UPDATE(i32 %29, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %1, %28
  %35 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %36 = load i32*, i32** @DPPCLK_DTO_DB_EN, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_UPDATE(i32 %35, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %1, %34
  %41 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %42 = load i32*, i32** @DPPCLK_DTO_DB_EN, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @REG_UPDATE(i32 %41, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %1, %40
  %47 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %48 = load i32*, i32** @DPPCLK_DTO_DB_EN, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_UPDATE(i32 %47, i32 %50, i32 1)
  br label %54

52:                                               ; preds = %1
  %53 = call i32 @ASSERT(i32 0)
  br label %54

54:                                               ; preds = %52, %46
  ret void
}

declare dso_local %struct.dcn_dccg* @TO_DCN_DCCG(%struct.dccg*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
