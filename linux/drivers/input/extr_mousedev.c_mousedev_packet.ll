; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev_client = type { i64, i32, i32, i64, i32, i64, %struct.mousedev_motion* }
%struct.mousedev_motion = type { i32, i64, i64, i64 }

@PACKET_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev_client*, i32*)* @mousedev_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_packet(%struct.mousedev_client* %0, i32* %1) #0 {
  %3 = alloca %struct.mousedev_client*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mousedev_motion*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mousedev_client* %0, %struct.mousedev_client** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %10 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %9, i32 0, i32 6
  %11 = load %struct.mousedev_motion*, %struct.mousedev_motion** %10, align 8
  %12 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %13 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %11, i64 %14
  store %struct.mousedev_motion* %15, %struct.mousedev_motion** %5, align 8
  %16 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %17 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @clamp_val(i64 %18, i32 -127, i32 127)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %23 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %27 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @clamp_val(i64 %28, i32 -127, i32 127)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %33 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = call i32 @BIT(i32 3)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BIT(i32 7)
  %41 = and i32 %39, %40
  %42 = ashr i32 %41, 3
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @BIT(i32 7)
  %45 = and i32 %43, %44
  %46 = ashr i32 %45, 2
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %53 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 7
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %67 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %124 [
    i32 130, label %69
    i32 129, label %92
    i32 128, label %123
  ]

69:                                               ; preds = %2
  %70 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %71 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @clamp_val(i64 %72, i32 -7, i32 7)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %77 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 15
  %82 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %83 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 24
  %86 = shl i32 %85, 1
  %87 = or i32 %81, %86
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %91 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %90, i32 0, i32 2
  store i32 4, i32* %91, align 4
  br label %144

92:                                               ; preds = %2
  %93 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %94 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @clamp_val(i64 %95, i32 -127, i32 127)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %100 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %104 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 16
  %107 = ashr i32 %106, 3
  %108 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %109 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 8
  %112 = ashr i32 %111, 1
  %113 = or i32 %107, %112
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %122 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %121, i32 0, i32 2
  store i32 4, i32* %122, align 4
  br label %144

123:                                              ; preds = %2
  br label %124

124:                                              ; preds = %2, %123
  %125 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %126 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %128 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 16
  %131 = ashr i32 %130, 3
  %132 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %133 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 8
  %136 = ashr i32 %135, 1
  %137 = or i32 %131, %136
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %143 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %142, i32 0, i32 2
  store i32 3, i32* %143, align 4
  br label %144

144:                                              ; preds = %124, %92, %69
  %145 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %146 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %186, label %149

149:                                              ; preds = %144
  %150 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %151 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %186, label %154

154:                                              ; preds = %149
  %155 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %156 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %186, label %159

159:                                              ; preds = %154
  %160 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %161 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %164 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %169 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %171 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %174 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  br label %185

175:                                              ; preds = %159
  %176 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %177 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, 1
  %180 = load i32, i32* @PACKET_QUEUE_LEN, align 4
  %181 = sext i32 %180 to i64
  %182 = urem i64 %179, %181
  %183 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %184 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %175, %167
  br label %186

186:                                              ; preds = %185, %154, %149, %144
  ret void
}

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
