; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_ir_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_ir_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@wiimod_ir_change.data_enable = internal constant [1 x i32] [i32 1], align 4
@wiimod_ir_change.data_sens1 = internal constant [9 x i32] [i32 2, i32 0, i32 0, i32 113, i32 1, i32 0, i32 170, i32 0, i32 100], align 16
@wiimod_ir_change.data_sens2 = internal constant [2 x i32] [i32 99, i32 3], align 4
@wiimod_ir_change.data_fin = internal constant [1 x i32] [i32 8], align 4
@WIIPROTO_FLAGS_IR = common dso_local global i32 0, align 4
@WIIPROTO_REQ_NULL = common dso_local global i32 0, align 4
@WIIPROTO_REQ_IR1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WIIPROTO_REQ_IR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_data*, i32)* @wiimod_ir_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_ir_change(%struct.wiimote_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %10 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %16 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WIIPROTO_FLAGS_IR, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %14, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  store i32 0, i32* %3, align 4
  br label %191

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* @WIIPROTO_FLAGS_IR, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %35 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %40 = call i32 @wiiproto_req_ir1(%struct.wiimote_data* %39, i32 0)
  %41 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %42 = call i32 @wiiproto_req_ir2(%struct.wiimote_data* %41, i32 0)
  %43 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %44 = load i32, i32* @WIIPROTO_REQ_NULL, align 4
  %45 = call i32 @wiiproto_req_drm(%struct.wiimote_data* %43, i32 %44)
  %46 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %47 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %3, align 4
  br label %191

51:                                               ; preds = %28
  %52 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %53 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %58 = call i32 @wiimote_cmd_acquire(%struct.wiimote_data* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %191

63:                                               ; preds = %51
  %64 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %65 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %70 = load i32, i32* @WIIPROTO_REQ_IR1, align 4
  %71 = call i32 @wiimote_cmd_set(%struct.wiimote_data* %69, i32 %70, i32 0)
  %72 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %73 = call i32 @wiiproto_req_ir1(%struct.wiimote_data* %72, i32 6)
  %74 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %75 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %80 = call i32 @wiimote_cmd_wait(%struct.wiimote_data* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  br label %187

84:                                               ; preds = %63
  %85 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %86 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %187

93:                                               ; preds = %84
  %94 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %95 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %100 = load i32, i32* @WIIPROTO_REQ_IR2, align 4
  %101 = call i32 @wiimote_cmd_set(%struct.wiimote_data* %99, i32 %100, i32 0)
  %102 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %103 = call i32 @wiiproto_req_ir2(%struct.wiimote_data* %102, i32 6)
  %104 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %105 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %110 = call i32 @wiimote_cmd_wait(%struct.wiimote_data* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %93
  br label %187

114:                                              ; preds = %93
  %115 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %116 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %187

123:                                              ; preds = %114
  %124 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %125 = call i32 @wiimote_cmd_write(%struct.wiimote_data* %124, i32 11534384, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @wiimod_ir_change.data_enable, i64 0, i64 0), i32 4)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %187

129:                                              ; preds = %123
  %130 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %131 = call i32 @wiimote_cmd_write(%struct.wiimote_data* %130, i32 11534336, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @wiimod_ir_change.data_sens1, i64 0, i64 0), i32 36)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %187

135:                                              ; preds = %129
  %136 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %137 = call i32 @wiimote_cmd_write(%struct.wiimote_data* %136, i32 11534362, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wiimod_ir_change.data_sens2, i64 0, i64 0), i32 8)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %187

141:                                              ; preds = %135
  %142 = load i32, i32* %5, align 4
  switch i32 %142, label %146 [
    i32 128, label %143
    i32 129, label %144
    i32 130, label %145
  ]

143:                                              ; preds = %141
  store i32 5, i32* %8, align 4
  br label %146

144:                                              ; preds = %141
  store i32 3, i32* %8, align 4
  br label %146

145:                                              ; preds = %141
  store i32 1, i32* %8, align 4
  br label %146

146:                                              ; preds = %141, %145, %144, %143
  %147 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %148 = call i32 @wiimote_cmd_write(%struct.wiimote_data* %147, i32 11534387, i32* %8, i32 4)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %187

152:                                              ; preds = %146
  %153 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %154 = call i32 @wiimote_cmd_write(%struct.wiimote_data* %153, i32 11534384, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @wiimod_ir_change.data_fin, i64 0, i64 0), i32 4)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %187

158:                                              ; preds = %152
  %159 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %160 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @spin_lock_irqsave(i32* %161, i64 %162)
  %164 = load i32, i32* @WIIPROTO_FLAGS_IR, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %167 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %165
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @WIIPROTO_FLAGS_IR, align 4
  %173 = and i32 %171, %172
  %174 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %175 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  %179 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %180 = load i32, i32* @WIIPROTO_REQ_NULL, align 4
  %181 = call i32 @wiiproto_req_drm(%struct.wiimote_data* %179, i32 %180)
  %182 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %183 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  br label %187

187:                                              ; preds = %158, %157, %151, %140, %134, %128, %120, %113, %90, %83
  %188 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %189 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %188)
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %187, %61, %31, %22
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wiiproto_req_ir1(%struct.wiimote_data*, i32) #1

declare dso_local i32 @wiiproto_req_ir2(%struct.wiimote_data*, i32) #1

declare dso_local i32 @wiiproto_req_drm(%struct.wiimote_data*, i32) #1

declare dso_local i32 @wiimote_cmd_acquire(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_set(%struct.wiimote_data*, i32, i32) #1

declare dso_local i32 @wiimote_cmd_wait(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_write(%struct.wiimote_data*, i32, i32*, i32) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
