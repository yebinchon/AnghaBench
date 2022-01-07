; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_cooked_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_cooked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog_port = type { i32, i32, i8, i32*, %struct.gameport* }
%struct.gameport = type { i32 }

@ANALOG_LOOP_TIME = common dso_local global i32 0, align 4
@ANALOG_MAX_TIME = common dso_local global i32 0, align 4
@ANALOG_FUZZ_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analog_port*)* @analog_cooked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analog_cooked_read(%struct.analog_port* %0) #0 {
  %2 = alloca %struct.analog_port*, align 8
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.analog_port* %0, %struct.analog_port** %2, align 8
  %16 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %17 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %16, i32 0, i32 4
  %18 = load %struct.gameport*, %struct.gameport** %17, align 8
  store %struct.gameport* %18, %struct.gameport** %3, align 8
  %19 = load i32, i32* @ANALOG_LOOP_TIME, align 4
  %20 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %21 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @ANALOG_MAX_TIME, align 4
  %26 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %27 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.gameport*, %struct.gameport** %3, align 8
  %33 = call i32 @gameport_trigger(%struct.gameport* %32)
  %34 = call i32 (...) @get_time()
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @local_irq_restore(i64 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %39 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 8
  store i8 %40, i8* %11, align 1
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %99, %1
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i8, i8* %11, align 1
  store i8 %43, i8* %12, align 1
  %44 = call i32 (...) @local_irq_disable()
  %45 = load %struct.gameport*, %struct.gameport** %3, align 8
  %46 = call zeroext i8 @gameport_read(%struct.gameport* %45)
  %47 = zext i8 %46 to i32
  %48 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %49 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 8
  %51 = zext i8 %50 to i32
  %52 = and i32 %47, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %11, align 1
  %54 = call i32 (...) @get_time()
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @delta(i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = xor i32 %71, %73
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %77
  store i8 %75, i8* %78, align 1
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %69, %63, %41
  br label %86

86:                                               ; preds = %85
  %87 = load i8, i8* %11, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @delta(i32 %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br label %99

99:                                               ; preds = %93, %90, %86
  %100 = phi i1 [ false, %90 ], [ false, %86 ], [ %98, %93 ]
  br i1 %100, label %41, label %101

101:                                              ; preds = %99
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 4
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %11, align 1
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %158, %101
  %109 = load i32, i32* %14, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %11, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %118, %116
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %11, align 1
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %154, %111
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %157

124:                                              ; preds = %121
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %15, align 4
  %131 = shl i32 1, %130
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %124
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @delta(i32 %135, i32 %139)
  %141 = load i32, i32* @ANALOG_FUZZ_BITS, align 4
  %142 = shl i32 %140, %141
  %143 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %144 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = udiv i32 %142, %145
  %147 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %148 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  br label %153

153:                                              ; preds = %134, %124
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %121

157:                                              ; preds = %121
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %14, align 4
  br label %108

161:                                              ; preds = %108
  %162 = load i8, i8* %11, align 1
  %163 = zext i8 %162 to i32
  %164 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %165 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %164, i32 0, i32 2
  %166 = load i8, i8* %165, align 8
  %167 = zext i8 %166 to i32
  %168 = icmp ne i32 %163, %167
  %169 = zext i1 %168 to i32
  %170 = sub nsw i32 0, %169
  ret i32 %170
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @get_time(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
