; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_train_init_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_train_init_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk104_ram_train = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"missing link training data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*, %struct.gk104_ram_train*)* @gk104_ram_train_init_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ram_train_init_0(%struct.nvkm_ram* %0, %struct.gk104_ram_train* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ram*, align 8
  %5 = alloca %struct.gk104_ram_train*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %4, align 8
  store %struct.gk104_ram_train* %1, %struct.gk104_ram_train** %5, align 8
  %10 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %6, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %7, align 8
  %17 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %18 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 979
  %21 = icmp ne i32 %20, 979
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %24 = call i32 @nvkm_warn(%struct.nvkm_subdev* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %154

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %117, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 48
  br i1 %30, label %31, label %120

31:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %113, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %116

35:                                               ; preds = %32
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 1112424, %37
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 0, %40
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 %38, i32 %41)
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 1112352, %44
  %46 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %47 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 4
  %55 = or i32 0, %54
  %56 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %57 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %55, %63
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %43, i32 %45, i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 1112344, %67
  %69 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %70 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nvkm_wr32(%struct.nvkm_device* %66, i32 %68, i32 %76)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 1112352, %79
  %81 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %82 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 4
  %90 = or i32 256, %89
  %91 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %92 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %90, %98
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 %80, i32 %99)
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 1112344, %102
  %104 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %105 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 %103, i32 %111)
  br label %113

113:                                              ; preds = %35
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 4
  store i32 %115, i32* %9, align 4
  br label %32

116:                                              ; preds = %32
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %28

120:                                              ; preds = %28
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %150, %120
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 8
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %146, %124
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 256
  br i1 %127, label %128, label %149

128:                                              ; preds = %125
  %129 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 1112424, %130
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @nvkm_wr32(%struct.nvkm_device* %129, i32 %131, i32 %132)
  %134 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 1112320, %135
  %137 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %138 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nvkm_wr32(%struct.nvkm_device* %134, i32 %136, i32 %144)
  br label %146

146:                                              ; preds = %128
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %125

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 4
  store i32 %152, i32* %9, align 4
  br label %121

153:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %22
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
