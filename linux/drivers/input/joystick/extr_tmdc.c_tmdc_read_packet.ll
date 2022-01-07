; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_tmdc.c_tmdc_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_tmdc.c_tmdc_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@TMDC_MAX_LENGTH = common dso_local global i32 0, align 4
@TMDC_MAX_STROBE = common dso_local global i32 0, align 4
@TMDC_MAX_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i8*)* @tmdc_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmdc_read_packet(%struct.gameport* %0, i8* %1) #0 {
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i32, i32* @TMDC_MAX_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.gameport*, %struct.gameport** %3, align 8
  %18 = load i32, i32* @TMDC_MAX_STROBE, align 4
  %19 = call i32 @gameport_time(%struct.gameport* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %36, %2
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.gameport*, %struct.gameport** %3, align 8
  %25 = load i32, i32* @TMDC_MAX_START, align 4
  %26 = call i32 @gameport_time(%struct.gameport* %24, i32 %25)
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %34
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @local_irq_save(i64 %40)
  %42 = load %struct.gameport*, %struct.gameport** %3, align 8
  %43 = call i32 @gameport_trigger(%struct.gameport* %42)
  %44 = load %struct.gameport*, %struct.gameport** %3, align 8
  %45 = call i32 @gameport_read(%struct.gameport* %44)
  %46 = ashr i32 %45, 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  br label %48

48:                                               ; preds = %196, %39
  %49 = load i8, i8* %7, align 1
  store i8 %49, i8* %8, align 1
  %50 = load %struct.gameport*, %struct.gameport** %3, align 8
  %51 = call i32 @gameport_read(%struct.gameport* %50)
  %52 = ashr i32 %51, 4
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  store i32 0, i32* %14, align 4
  %54 = load i8, i8* %7, align 1
  store i8 %54, i8* %6, align 1
  %55 = load i8, i8* %8, align 1
  store i8 %55, i8* %5, align 1
  br label %56

56:                                               ; preds = %176, %48
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %187

59:                                               ; preds = %56
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = xor i32 %61, -1
  %63 = load i8, i8* %5, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %170

68:                                               ; preds = %59
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TMDC_MAX_LENGTH, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %68
  br label %176

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %82
  %93 = load i8, i8* %6, align 1
  %94 = zext i8 %93 to i32
  %95 = xor i32 %94, -1
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, %16
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %176

119:                                              ; preds = %82
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 9
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load i8, i8* %6, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %132
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %136
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %176

143:                                              ; preds = %119
  %144 = load i8, i8* %6, align 1
  %145 = zext i8 %144 to i32
  %146 = xor i32 %145, -1
  %147 = and i32 %146, 1
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = sub nsw i32 %151, 1
  %154 = shl i32 %147, %153
  %155 = load i8*, i8** %4, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %16
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %159, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, %154
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %165, align 1
  br label %170

170:                                              ; preds = %143, %59
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %134, %102, %81
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  %179 = load i8, i8* %6, align 1
  %180 = zext i8 %179 to i32
  %181 = ashr i32 %180, 2
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %6, align 1
  %183 = load i8, i8* %5, align 1
  %184 = zext i8 %183 to i32
  %185 = ashr i32 %184, 2
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %5, align 1
  br label %56

187:                                              ; preds = %56
  br label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 0
  br label %196

196:                                              ; preds = %192, %188
  %197 = phi i1 [ true, %188 ], [ %195, %192 ]
  br i1 %197, label %48, label %198

198:                                              ; preds = %196
  %199 = load i64, i64* %9, align 8
  %200 = call i32 @local_irq_restore(i64 %199)
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @TMDC_MAX_LENGTH, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @TMDC_MAX_LENGTH, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = shl i32 %210, 1
  %212 = or i32 %205, %211
  ret i32 %212
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
