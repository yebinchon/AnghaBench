; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlc_send_polls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlc_send_polls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64*, i32, %struct.serio** }
%struct.serio = type { %struct.serio_driver* }
%struct.serio_driver = type { i32 (%struct.serio.0*, i32, i32)* }
%struct.serio.0 = type opaque

@HIL_PKT_ADDR_MASK = common dso_local global i32 0, align 4
@HIL_ERR_INT = common dso_local global i32 0, align 4
@HIL_PKT_CMD = common dso_local global i32 0, align 4
@HIL_CMD_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @hil_mlc_send_polls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hil_mlc_send_polls(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.serio*, align 8
  %7 = alloca %struct.serio_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HIL_PKT_ADDR_MASK, align 4
  %15 = and i32 %13, %14
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load %struct.serio**, %struct.serio*** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.serio*, %struct.serio** %22, i64 %30
  %32 = load %struct.serio*, %struct.serio** %31, align 8
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %19
  %35 = phi %struct.serio* [ %32, %19 ], [ null, %33 ]
  store %struct.serio* %35, %struct.serio** %6, align 8
  %36 = load %struct.serio*, %struct.serio** %6, align 8
  %37 = icmp ne %struct.serio* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.serio*, %struct.serio** %6, align 8
  %40 = getelementptr inbounds %struct.serio, %struct.serio* %39, i32 0, i32 0
  %41 = load %struct.serio_driver*, %struct.serio_driver** %40, align 8
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi %struct.serio_driver* [ %41, %38 ], [ null, %42 ]
  store %struct.serio_driver* %44, %struct.serio_driver** %7, align 8
  br label %45

45:                                               ; preds = %188, %43
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 15, %49
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %189

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @HIL_PKT_ADDR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 8
  %65 = icmp ne i32 %60, %64
  br i1 %65, label %66, label %139

66:                                               ; preds = %52
  %67 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %68 = icmp ne %struct.serio_driver* %67, null
  br i1 %68, label %69, label %106

69:                                               ; preds = %66
  %70 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %71 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %70, i32 0, i32 0
  %72 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.serio.0*, i32, i32)* %72, null
  br i1 %73, label %74, label %106

74:                                               ; preds = %69
  %75 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %76 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %75, i32 0, i32 0
  %77 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %76, align 8
  %78 = load %struct.serio*, %struct.serio** %6, align 8
  %79 = bitcast %struct.serio* %78 to %struct.serio.0*
  %80 = call i32 %77(%struct.serio.0* %79, i32 0, i32 0)
  %81 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %82 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %81, i32 0, i32 0
  %83 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %82, align 8
  %84 = load %struct.serio*, %struct.serio** %6, align 8
  %85 = bitcast %struct.serio* %84 to %struct.serio.0*
  %86 = load i32, i32* @HIL_ERR_INT, align 4
  %87 = ashr i32 %86, 16
  %88 = call i32 %83(%struct.serio.0* %85, i32 %87, i32 0)
  %89 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %90 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %89, i32 0, i32 0
  %91 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %90, align 8
  %92 = load %struct.serio*, %struct.serio** %6, align 8
  %93 = bitcast %struct.serio* %92 to %struct.serio.0*
  %94 = load i32, i32* @HIL_PKT_CMD, align 4
  %95 = ashr i32 %94, 8
  %96 = call i32 %91(%struct.serio.0* %93, i32 %95, i32 0)
  %97 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %98 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %97, i32 0, i32 0
  %99 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %98, align 8
  %100 = load %struct.serio*, %struct.serio** %6, align 8
  %101 = bitcast %struct.serio* %100 to %struct.serio.0*
  %102 = load i32, i32* @HIL_CMD_POL, align 4
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 %99(%struct.serio.0* %101, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %74, %69, %66
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @HIL_PKT_ADDR_MASK, align 4
  %109 = and i32 %107, %108
  %110 = ashr i32 %109, 8
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load %struct.serio**, %struct.serio*** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.serio*, %struct.serio** %116, i64 %124
  %126 = load %struct.serio*, %struct.serio** %125, align 8
  br label %128

127:                                              ; preds = %106
  br label %128

128:                                              ; preds = %127, %113
  %129 = phi %struct.serio* [ %126, %113 ], [ null, %127 ]
  store %struct.serio* %129, %struct.serio** %6, align 8
  %130 = load %struct.serio*, %struct.serio** %6, align 8
  %131 = icmp ne %struct.serio* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.serio*, %struct.serio** %6, align 8
  %134 = getelementptr inbounds %struct.serio, %struct.serio* %133, i32 0, i32 0
  %135 = load %struct.serio_driver*, %struct.serio_driver** %134, align 8
  br label %137

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi %struct.serio_driver* [ %135, %132 ], [ null, %136 ]
  store %struct.serio_driver* %138, %struct.serio_driver** %7, align 8
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %52
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %145 = icmp ne %struct.serio_driver* %144, null
  br i1 %145, label %146, label %188

146:                                              ; preds = %139
  %147 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %148 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %147, i32 0, i32 0
  %149 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %148, align 8
  %150 = icmp ne i32 (%struct.serio.0*, i32, i32)* %149, null
  br i1 %150, label %151, label %188

151:                                              ; preds = %146
  %152 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %153 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %152, i32 0, i32 0
  %154 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %153, align 8
  %155 = load %struct.serio*, %struct.serio** %6, align 8
  %156 = bitcast %struct.serio* %155 to %struct.serio.0*
  %157 = load i32, i32* %8, align 4
  %158 = ashr i32 %157, 24
  %159 = call i32 %154(%struct.serio.0* %156, i32 %158, i32 0)
  %160 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %161 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %160, i32 0, i32 0
  %162 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %161, align 8
  %163 = load %struct.serio*, %struct.serio** %6, align 8
  %164 = bitcast %struct.serio* %163 to %struct.serio.0*
  %165 = load i32, i32* %8, align 4
  %166 = ashr i32 %165, 16
  %167 = and i32 %166, 255
  %168 = call i32 %162(%struct.serio.0* %164, i32 %167, i32 0)
  %169 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %170 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %169, i32 0, i32 0
  %171 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %170, align 8
  %172 = load %struct.serio*, %struct.serio** %6, align 8
  %173 = bitcast %struct.serio* %172 to %struct.serio.0*
  %174 = load i32, i32* %8, align 4
  %175 = ashr i32 %174, 8
  %176 = load i32, i32* @HIL_PKT_ADDR_MASK, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %175, %177
  %179 = call i32 %171(%struct.serio.0* %173, i32 %178, i32 0)
  %180 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %181 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %180, i32 0, i32 0
  %182 = load i32 (%struct.serio.0*, i32, i32)*, i32 (%struct.serio.0*, i32, i32)** %181, align 8
  %183 = load %struct.serio*, %struct.serio** %6, align 8
  %184 = bitcast %struct.serio* %183 to %struct.serio.0*
  %185 = load i32, i32* %8, align 4
  %186 = and i32 %185, 255
  %187 = call i32 %182(%struct.serio.0* %184, i32 %186, i32 0)
  br label %188

188:                                              ; preds = %151, %146, %139
  br label %45

189:                                              ; preds = %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
