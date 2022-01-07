; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn2_update_clocks_fpga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn2_update_clocks_fpga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dc_clocks }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn2_update_clocks_fpga(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_clocks*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %10 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.dc_clocks* %13, %struct.dc_clocks** %7, align 8
  %14 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %15 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1200000
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %20 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 1200000, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %27 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %30 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @should_set_clock(i32 %25, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %37 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %40 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %23
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %45 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %48 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @should_set_clock(i32 %43, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %55 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %58 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %42
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %63 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %66 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @should_set_clock(i32 %61, i32 %64, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %73 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %76 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %60
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %81 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %84 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @should_set_clock(i32 %79, i32 %82, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %91 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %94 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %78
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %99 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %102 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @should_set_clock(i32 %97, i32 %100, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %109 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %112 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %96
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %117 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %120 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @should_set_clock(i32 %115, i32 %118, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %114
  %126 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %127 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %130 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %114
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %136 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @should_set_clock(i32 %133, i32 %134, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %144 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 6
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %132
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %149 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %152 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @should_set_clock(i32 %147, i32 %150, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %146
  %158 = load %struct.dc_clocks*, %struct.dc_clocks** %7, align 8
  %159 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %162 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 7
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %157, %146
  %165 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %166 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %170 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %168, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %164
  %175 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %176 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %180 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 5
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %174, %164
  %183 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %184 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %188 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %186, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %182
  %193 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %194 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %198 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 6
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %192, %182
  %201 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %202 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %205 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %204, i32 0, i32 0
  %206 = call i32 @dm_set_dcn_clocks(i32 %203, %struct.TYPE_8__* %205)
  ret void
}

declare dso_local i64 @should_set_clock(i32, i32, i32) #1

declare dso_local i32 @dm_set_dcn_clocks(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
