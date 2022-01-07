; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETP_REGISTER_WRITE = common dso_local global i8 0, align 1
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i8 0, align 1
@ETP_PS2_CUSTOM_COMMAND = common dso_local global i8 0, align 1
@ETP_REGISTER_READWRITE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [52 x i8] c"failed to write register 0x%02x with value 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8, i8)* @elantech_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_write_reg(%struct.psmouse* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.elantech_data*, align 8
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  %12 = load %struct.elantech_data*, %struct.elantech_data** %11, align 8
  store %struct.elantech_data* %12, %struct.elantech_data** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 7
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %18, 38
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %192

21:                                               ; preds = %16
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, 17
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %192

30:                                               ; preds = %25, %21
  %31 = load %struct.elantech_data*, %struct.elantech_data** %8, align 8
  %32 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %182 [
    i32 1, label %35
    i32 2, label %61
    i32 3, label %98
    i32 4, label %135
  ]

35:                                               ; preds = %30
  %36 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %37 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %36, i32 0, i32 0
  %38 = load i8, i8* @ETP_REGISTER_WRITE, align 1
  %39 = call i32 @ps2_sliced_command(i32* %37, i8 zeroext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 0
  %44 = load i8, i8* %6, align 1
  %45 = call i32 @ps2_sliced_command(i32* %43, i8 zeroext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 0
  %50 = load i8, i8* %7, align 1
  %51 = call i32 @ps2_sliced_command(i32* %49, i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %55 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %54, i32 0, i32 0
  %56 = load i8, i8* @PSMOUSE_CMD_SETSCALE11, align 1
  %57 = call i32 @ps2_command(i32* %55, i32* null, i8 zeroext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %47, %41, %35
  store i32 -1, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %53
  br label %182

61:                                               ; preds = %30
  %62 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %63 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %64 = call i32 @elantech_ps2_command(%struct.psmouse* %62, i32* null, i8 zeroext %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %61
  %67 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %68 = load i8, i8* @ETP_REGISTER_WRITE, align 1
  %69 = call i32 @elantech_ps2_command(%struct.psmouse* %67, i32* null, i8 zeroext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %66
  %72 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %73 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %74 = call i32 @elantech_ps2_command(%struct.psmouse* %72, i32* null, i8 zeroext %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %71
  %77 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %78 = load i8, i8* %6, align 1
  %79 = call i32 @elantech_ps2_command(%struct.psmouse* %77, i32* null, i8 zeroext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %83 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %84 = call i32 @elantech_ps2_command(%struct.psmouse* %82, i32* null, i8 zeroext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %88 = load i8, i8* %7, align 1
  %89 = call i32 @elantech_ps2_command(%struct.psmouse* %87, i32* null, i8 zeroext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %93 = load i8, i8* @PSMOUSE_CMD_SETSCALE11, align 1
  %94 = call i32 @elantech_ps2_command(%struct.psmouse* %92, i32* null, i8 zeroext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %86, %81, %76, %71, %66, %61
  store i32 -1, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %91
  br label %182

98:                                               ; preds = %30
  %99 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %100 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %101 = call i32 @elantech_ps2_command(%struct.psmouse* %99, i32* null, i8 zeroext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %98
  %104 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %105 = load i8, i8* @ETP_REGISTER_READWRITE, align 1
  %106 = call i32 @elantech_ps2_command(%struct.psmouse* %104, i32* null, i8 zeroext %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %133, label %108

108:                                              ; preds = %103
  %109 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %110 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %111 = call i32 @elantech_ps2_command(%struct.psmouse* %109, i32* null, i8 zeroext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %108
  %114 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %115 = load i8, i8* %6, align 1
  %116 = call i32 @elantech_ps2_command(%struct.psmouse* %114, i32* null, i8 zeroext %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %113
  %119 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %120 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %121 = call i32 @elantech_ps2_command(%struct.psmouse* %119, i32* null, i8 zeroext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %125 = load i8, i8* %7, align 1
  %126 = call i32 @elantech_ps2_command(%struct.psmouse* %124, i32* null, i8 zeroext %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %130 = load i8, i8* @PSMOUSE_CMD_SETSCALE11, align 1
  %131 = call i32 @elantech_ps2_command(%struct.psmouse* %129, i32* null, i8 zeroext %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %123, %118, %113, %108, %103, %98
  store i32 -1, i32* %9, align 4
  br label %134

134:                                              ; preds = %133, %128
  br label %182

135:                                              ; preds = %30
  %136 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %137 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %138 = call i32 @elantech_ps2_command(%struct.psmouse* %136, i32* null, i8 zeroext %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %180, label %140

140:                                              ; preds = %135
  %141 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %142 = load i8, i8* @ETP_REGISTER_READWRITE, align 1
  %143 = call i32 @elantech_ps2_command(%struct.psmouse* %141, i32* null, i8 zeroext %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %180, label %145

145:                                              ; preds = %140
  %146 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %147 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %148 = call i32 @elantech_ps2_command(%struct.psmouse* %146, i32* null, i8 zeroext %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %180, label %150

150:                                              ; preds = %145
  %151 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %152 = load i8, i8* %6, align 1
  %153 = call i32 @elantech_ps2_command(%struct.psmouse* %151, i32* null, i8 zeroext %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %150
  %156 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %157 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %158 = call i32 @elantech_ps2_command(%struct.psmouse* %156, i32* null, i8 zeroext %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %155
  %161 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %162 = load i8, i8* @ETP_REGISTER_READWRITE, align 1
  %163 = call i32 @elantech_ps2_command(%struct.psmouse* %161, i32* null, i8 zeroext %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %160
  %166 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %167 = load i8, i8* @ETP_PS2_CUSTOM_COMMAND, align 1
  %168 = call i32 @elantech_ps2_command(%struct.psmouse* %166, i32* null, i8 zeroext %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %172 = load i8, i8* %7, align 1
  %173 = call i32 @elantech_ps2_command(%struct.psmouse* %171, i32* null, i8 zeroext %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %177 = load i8, i8* @PSMOUSE_CMD_SETSCALE11, align 1
  %178 = call i32 @elantech_ps2_command(%struct.psmouse* %176, i32* null, i8 zeroext %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175, %170, %165, %160, %155, %150, %145, %140, %135
  store i32 -1, i32* %9, align 4
  br label %181

181:                                              ; preds = %180, %175
  br label %182

182:                                              ; preds = %30, %181, %134, %97, %60
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %187 = load i8, i8* %6, align 1
  %188 = load i8, i8* %7, align 1
  %189 = call i32 @psmouse_err(%struct.psmouse* %186, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8 zeroext %187, i8 zeroext %188)
  br label %190

190:                                              ; preds = %185, %182
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %190, %29, %20
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @ps2_sliced_command(i32*, i8 zeroext) #1

declare dso_local i32 @ps2_command(i32*, i32*, i8 zeroext) #1

declare dso_local i32 @elantech_ps2_command(%struct.psmouse*, i32*, i8 zeroext) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
