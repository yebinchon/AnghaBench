; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_sb_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_sb_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i64, i32 }

@TRANSMISSION_MODE_2K = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_4K = common dso_local global i64 0, align 8
@coff_thres_1seg = common dso_local global i32* null, align 8
@coff_thres_3seg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_set_sb_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_sb_channel(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %3, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TRANSMISSION_MODE_2K, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TRANSMISSION_MODE_4K, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17, %1
  %24 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %26 = call i32 @dib8000_read_word(%struct.dib8000_state* %25, i32 219)
  %27 = or i32 %26, 1
  %28 = call i32 @dib8000_write_word(%struct.dib8000_state* %24, i32 219, i32 %27)
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %31 = call i32 @dib8000_read_word(%struct.dib8000_state* %30, i32 190)
  %32 = or i32 %31, 16384
  %33 = call i32 @dib8000_write_word(%struct.dib8000_state* %29, i32 190, i32 %32)
  br label %45

34:                                               ; preds = %17
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %37 = call i32 @dib8000_read_word(%struct.dib8000_state* %36, i32 219)
  %38 = and i32 %37, 65534
  %39 = call i32 @dib8000_write_word(%struct.dib8000_state* %35, i32 219, i32 %38)
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %41 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %42 = call i32 @dib8000_read_word(%struct.dib8000_state* %41, i32 190)
  %43 = and i32 %42, 49151
  %44 = call i32 @dib8000_write_word(%struct.dib8000_state* %40, i32 190, i32 %43)
  br label %45

45:                                               ; preds = %34, %23
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %52 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %51, i32 0, i32 0
  store i32 224, i32* %52, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %54, i32 0, i32 0
  store i32 64, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %59 = call i32 @dib8000_read_word(%struct.dib8000_state* %58, i32 268)
  %60 = and i32 %59, 63999
  %61 = or i32 %60, 512
  %62 = call i32 @dib8000_write_word(%struct.dib8000_state* %57, i32 268, i32 %61)
  %63 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = xor i32 %66, -1
  %68 = and i32 %67, 1
  %69 = shl i32 %68, 2
  %70 = or i32 18424, %69
  %71 = or i32 %70, 3
  %72 = call i32 @dib8000_write_word(%struct.dib8000_state* %63, i32 187, i32 %71)
  %73 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %74 = call i32 @dib8000_write_word(%struct.dib8000_state* %73, i32 340, i32 1032)
  %75 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %76 = call i32 @dib8000_write_word(%struct.dib8000_state* %75, i32 341, i32 55)
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %56
  %82 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %83 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %88 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %89 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 %91, 14
  %93 = or i32 8143, %92
  %94 = call i32 @dib8000_write_word(%struct.dib8000_state* %87, i32 180, i32 %93)
  br label %104

95:                                               ; preds = %81
  %96 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = shl i32 %100, 14
  %102 = or i32 4047, %101
  %103 = call i32 @dib8000_write_word(%struct.dib8000_state* %96, i32 180, i32 %102)
  br label %104

104:                                              ; preds = %95, %86
  %105 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %106 = call i32 @dib8000_write_word(%struct.dib8000_state* %105, i32 338, i32 5284)
  %107 = load i32*, i32** @coff_thres_1seg, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32* %108, i32** %4, align 8
  br label %116

109:                                              ; preds = %56
  %110 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %111 = call i32 @dib8000_write_word(%struct.dib8000_state* %110, i32 180, i32 24527)
  %112 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %113 = call i32 @dib8000_write_word(%struct.dib8000_state* %112, i32 338, i32 5252)
  %114 = load i32*, i32** @coff_thres_3seg, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32* %115, i32** %4, align 8
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %118 = call i32 @dib8000_write_word(%struct.dib8000_state* %117, i32 228, i32 1)
  %119 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %120 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %121 = call i32 @dib8000_read_word(%struct.dib8000_state* %120, i32 205)
  %122 = and i32 %121, 65520
  %123 = call i32 @dib8000_write_word(%struct.dib8000_state* %119, i32 205, i32 %122)
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %116
  %129 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %130 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TRANSMISSION_MODE_2K, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %136 = call i32 @dib8000_write_word(%struct.dib8000_state* %135, i32 265, i32 15)
  br label %137

137:                                              ; preds = %134, %128, %116
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %160, %137
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 181, %143
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dib8000_write_word(%struct.dib8000_state* %142, i32 %144, i32 %149)
  %151 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 184, %152
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dib8000_write_word(%struct.dib8000_state* %151, i32 %153, i32 %158)
  br label %160

160:                                              ; preds = %141
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %138

163:                                              ; preds = %138
  %164 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %165 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %166 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = xor i32 %167, -1
  %169 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %170 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %168, %171
  %173 = call i32 @dib8000_write_word(%struct.dib8000_state* %164, i32 266, i32 %172)
  %174 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %175 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %163
  %179 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %180 = call i32 @dib8000_write_word(%struct.dib8000_state* %179, i32 178, i32 64)
  br label %184

181:                                              ; preds = %163
  %182 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %183 = call i32 @dib8000_write_word(%struct.dib8000_state* %182, i32 178, i32 32)
  br label %184

184:                                              ; preds = %181, %178
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
