; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_get_hw_state(%struct.dc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 4, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 32, i32* %14, align 4
  store i32 64, i32* %15, align 4
  store i32 128, i32* %16, align 4
  store i32 256, i32* %17, align 4
  store i32 32768, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 65535, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %20, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.dc*, %struct.dc** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @dcn10_get_hubbub_state(%struct.dc* %33, i8* %34, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %20, align 4
  br label %44

44:                                               ; preds = %32, %29, %25
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i32, i32* %20, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.dc*, %struct.dc** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 32768
  %57 = call i32 @dcn10_get_hubp_states(%struct.dc* %52, i8* %53, i32 %54, i32 %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %6, align 8
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %20, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %20, align 4
  br label %65

65:                                               ; preds = %51, %48, %44
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i32, i32* %20, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.dc*, %struct.dc** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @dcn10_get_rq_states(%struct.dc* %73, i8* %74, i32 %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %6, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %20, align 4
  br label %84

84:                                               ; preds = %72, %69, %65
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i32, i32* %20, align 4
  %90 = icmp ugt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.dc*, %struct.dc** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %20, align 4
  %95 = call i32 @dcn10_get_dlg_states(%struct.dc* %92, i8* %93, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %6, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %20, align 4
  %102 = sub i32 %101, %100
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %91, %88, %84
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 16
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load i32, i32* %20, align 4
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.dc*, %struct.dc** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %20, align 4
  %114 = call i32 @dcn10_get_ttu_states(%struct.dc* %111, i8* %112, i32 %113)
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %6, align 8
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %20, align 4
  %121 = sub i32 %120, %119
  store i32 %121, i32* %20, align 4
  br label %122

122:                                              ; preds = %110, %107, %103
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32, i32* %20, align 4
  %128 = icmp ugt i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.dc*, %struct.dc** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @dcn10_get_cm_states(%struct.dc* %130, i8* %131, i32 %132)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %6, align 8
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %20, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %20, align 4
  br label %141

141:                                              ; preds = %129, %126, %122
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, 64
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load i32, i32* %20, align 4
  %147 = icmp ugt i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load %struct.dc*, %struct.dc** %5, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @dcn10_get_mpcc_states(%struct.dc* %149, i8* %150, i32 %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %6, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %20, align 4
  %159 = sub i32 %158, %157
  store i32 %159, i32* %20, align 4
  br label %160

160:                                              ; preds = %148, %145, %141
  %161 = load i32, i32* %8, align 4
  %162 = and i32 %161, 128
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %160
  %165 = load i32, i32* %20, align 4
  %166 = icmp ugt i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = load %struct.dc*, %struct.dc** %5, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @dcn10_get_otg_states(%struct.dc* %168, i8* %169, i32 %170)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = zext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %6, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %20, align 4
  %178 = sub i32 %177, %176
  store i32 %178, i32* %20, align 4
  br label %179

179:                                              ; preds = %167, %164, %160
  %180 = load i32, i32* %8, align 4
  %181 = and i32 %180, 256
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %179
  %184 = load i32, i32* %20, align 4
  %185 = icmp ugt i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load %struct.dc*, %struct.dc** %5, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = load i32, i32* %20, align 4
  %190 = call i32 @dcn10_get_clock_states(%struct.dc* %187, i8* %188, i32 %189)
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %6, align 8
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %20, align 4
  %197 = sub i32 %196, %195
  store i32 %197, i32* %20, align 4
  br label %198

198:                                              ; preds = %186, %183, %179
  ret void
}

declare dso_local i32 @dcn10_get_hubbub_state(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_hubp_states(%struct.dc*, i8*, i32, i32) #1

declare dso_local i32 @dcn10_get_rq_states(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_dlg_states(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_ttu_states(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_cm_states(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_mpcc_states(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_otg_states(%struct.dc*, i8*, i32) #1

declare dso_local i32 @dcn10_get_clock_states(%struct.dc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
