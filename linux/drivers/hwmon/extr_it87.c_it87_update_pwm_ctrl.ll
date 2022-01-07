; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_it87_update_pwm_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_it87_update_pwm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.it87_data = type { i32*, i32*, i32*, i8***, i8*** }

@IT87_REG_PWM = common dso_local global i32* null, align 8
@IT87_REG_PWM_DUTY = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.it87_data*, i32)* @it87_update_pwm_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it87_update_pwm_ctrl(%struct.it87_data* %0, i32 %1) #0 {
  %3 = alloca %struct.it87_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.it87_data* %0, %struct.it87_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %8 = load i32*, i32** @IT87_REG_PWM, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @it87_read_value(%struct.it87_data* %7, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %16 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %14, i32* %20, align 4
  %21 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %22 = call i64 @has_newer_autopwm(%struct.it87_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %26 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 3
  %33 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %34 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %40 = load i32*, i32** @IT87_REG_PWM_DUTY, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @it87_read_value(%struct.it87_data* %39, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %48 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %94

53:                                               ; preds = %2
  %54 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %55 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %65 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 3
  %72 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %73 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %93

78:                                               ; preds = %53
  %79 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %80 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 127
  %87 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %88 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %78, %63
  br label %94

94:                                               ; preds = %93, %24
  %95 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %96 = call i64 @has_old_autopwm(%struct.it87_data* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @IT87_REG_AUTO_TEMP(i32 %104, i32 %105)
  %107 = call i8* @it87_read_value(%struct.it87_data* %103, i32 %106)
  %108 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %109 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %108, i32 0, i32 4
  %110 = load i8***, i8**** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8**, i8*** %110, i64 %112
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %107, i8** %117, align 8
  br label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %99

121:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @IT87_REG_AUTO_PWM(i32 %127, i32 %128)
  %130 = call i8* @it87_read_value(%struct.it87_data* %126, i32 %129)
  %131 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %132 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %131, i32 0, i32 3
  %133 = load i8***, i8**** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8**, i8*** %133, i64 %135
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* %130, i8** %140, align 8
  br label %141

141:                                              ; preds = %125
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %122

144:                                              ; preds = %122
  br label %211

145:                                              ; preds = %94
  %146 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %147 = call i64 @has_newer_autopwm(%struct.it87_data* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %210

149:                                              ; preds = %145
  %150 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @IT87_REG_AUTO_TEMP(i32 %151, i32 5)
  %153 = call i8* @it87_read_value(%struct.it87_data* %150, i32 %152)
  %154 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %155 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %154, i32 0, i32 4
  %156 = load i8***, i8**** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8**, i8*** %156, i64 %158
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  store i8* %153, i8** %161, align 8
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %182, %149
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @IT87_REG_AUTO_TEMP(i32 %167, i32 %168)
  %170 = call i8* @it87_read_value(%struct.it87_data* %166, i32 %169)
  %171 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %172 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %171, i32 0, i32 4
  %173 = load i8***, i8**** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8**, i8*** %173, i64 %175
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %177, i64 %180
  store i8* %170, i8** %181, align 8
  br label %182

182:                                              ; preds = %165
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %162

185:                                              ; preds = %162
  %186 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @IT87_REG_AUTO_TEMP(i32 %187, i32 3)
  %189 = call i8* @it87_read_value(%struct.it87_data* %186, i32 %188)
  %190 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %191 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %190, i32 0, i32 3
  %192 = load i8***, i8**** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8**, i8*** %192, i64 %194
  %196 = load i8**, i8*** %195, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  store i8* %189, i8** %197, align 8
  %198 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @IT87_REG_AUTO_TEMP(i32 %199, i32 4)
  %201 = call i8* @it87_read_value(%struct.it87_data* %198, i32 %200)
  %202 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %203 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %202, i32 0, i32 3
  %204 = load i8***, i8**** %203, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8**, i8*** %204, i64 %206
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 1
  store i8* %201, i8** %209, align 8
  br label %210

210:                                              ; preds = %185, %145
  br label %211

211:                                              ; preds = %210, %144
  ret void
}

declare dso_local i8* @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i64 @has_newer_autopwm(%struct.it87_data*) #1

declare dso_local i64 @has_old_autopwm(%struct.it87_data*) #1

declare dso_local i32 @IT87_REG_AUTO_TEMP(i32, i32) #1

declare dso_local i32 @IT87_REG_AUTO_PWM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
