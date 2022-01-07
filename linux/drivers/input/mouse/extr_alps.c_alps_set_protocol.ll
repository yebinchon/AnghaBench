; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.alps_data* }
%struct.alps_data = type { i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.alps_protocol_info = type { i32, i32, i32, i32 }

@alps_flush_packet = common dso_local global i32 0, align 4
@alps_hw_init_v1_v2 = common dso_local global i32 0, align 4
@alps_process_packet_v1_v2 = common dso_local global i8* null, align 8
@alps_set_abs_params_st = common dso_local global i8* null, align 8
@alps_dmi_has_separate_stick_buttons = common dso_local global i32 0, align 4
@ALPS_STICK_BITS = common dso_local global i32 0, align 4
@alps_hw_init_v3 = common dso_local global i32 0, align 4
@alps_process_packet_v3 = common dso_local global i8* null, align 8
@alps_set_abs_params_semi_mt = common dso_local global i8* null, align 8
@alps_decode_pinnacle = common dso_local global i32 0, align 4
@alps_v3_nibble_commands = common dso_local global i8* null, align 8
@PSMOUSE_CMD_RESET_WRAP = common dso_local global i8* null, align 8
@ALPS_REG_BASE_PINNACLE = common dso_local global i32 0, align 4
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@alps_hw_init_rushmore_v3 = common dso_local global i32 0, align 4
@alps_decode_rushmore = common dso_local global i32 0, align 4
@ALPS_REG_BASE_RUSHMORE = common dso_local global i32 0, align 4
@alps_hw_init_v4 = common dso_local global i32 0, align 4
@alps_process_packet_v4 = common dso_local global i8* null, align 8
@alps_v4_nibble_commands = common dso_local global i8* null, align 8
@PSMOUSE_CMD_DISABLE = common dso_local global i8* null, align 8
@alps_hw_init_dolphin_v1 = common dso_local global i32 0, align 4
@alps_process_touchpad_packet_v3_v5 = common dso_local global i8* null, align 8
@alps_decode_dolphin = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@alps_hw_init_v6 = common dso_local global i32 0, align 4
@alps_process_packet_v6 = common dso_local global i8* null, align 8
@alps_v6_nibble_commands = common dso_local global i8* null, align 8
@alps_hw_init_v7 = common dso_local global i32 0, align 4
@alps_process_packet_v7 = common dso_local global i8* null, align 8
@alps_decode_packet_v7 = common dso_local global i32 0, align 4
@alps_set_abs_params_v7 = common dso_local global i8* null, align 8
@ALPS_BUTTONPAD = common dso_local global i32 0, align 4
@ALPS_REG_BASE_V7 = common dso_local global i32 0, align 4
@alps_hw_init_ss4_v2 = common dso_local global i32 0, align 4
@alps_process_packet_ss4_v2 = common dso_local global i8* null, align 8
@alps_decode_ss4_v2 = common dso_local global i32 0, align 4
@alps_set_abs_params_ss4_v2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.alps_data*, %struct.alps_protocol_info*)* @alps_set_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_set_protocol(%struct.psmouse* %0, %struct.alps_data* %1, %struct.alps_protocol_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca %struct.alps_data*, align 8
  %7 = alloca %struct.alps_protocol_info*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store %struct.alps_data* %1, %struct.alps_data** %6, align 8
  store %struct.alps_protocol_info* %2, %struct.alps_protocol_info** %7, align 8
  %8 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  store %struct.alps_data* %8, %struct.alps_data** %10, align 8
  %11 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %12 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %11, i32 0, i32 15
  %13 = load i32, i32* @alps_flush_packet, align 4
  %14 = call i32 @timer_setup(i32* %12, i32 %13, i32 0)
  %15 = load %struct.alps_protocol_info*, %struct.alps_protocol_info** %7, align 8
  %16 = getelementptr inbounds %struct.alps_protocol_info, %struct.alps_protocol_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %19 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.alps_protocol_info*, %struct.alps_protocol_info** %7, align 8
  %21 = getelementptr inbounds %struct.alps_protocol_info, %struct.alps_protocol_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %24 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %23, i32 0, i32 14
  store i32 %22, i32* %24, align 4
  %25 = load %struct.alps_protocol_info*, %struct.alps_protocol_info** %7, align 8
  %26 = getelementptr inbounds %struct.alps_protocol_info, %struct.alps_protocol_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %29 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 8
  %30 = load %struct.alps_protocol_info*, %struct.alps_protocol_info** %7, align 8
  %31 = getelementptr inbounds %struct.alps_protocol_info, %struct.alps_protocol_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %34 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %36 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %35, i32 0, i32 1
  store i32 2000, i32* %36, align 4
  %37 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %38 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %37, i32 0, i32 2
  store i32 1400, i32* %38, align 8
  %39 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %40 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %39, i32 0, i32 3
  store i32 15, i32* %40, align 4
  %41 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %42 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %41, i32 0, i32 4
  store i32 11, i32* %42, align 8
  %43 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %44 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %275 [
    i32 136, label %46
    i32 135, label %46
    i32 134, label %70
    i32 133, label %101
    i32 132, label %136
    i32 131, label %152
    i32 130, label %183
    i32 129, label %200
    i32 128, label %248
  ]

46:                                               ; preds = %3, %3
  %47 = load i32, i32* @alps_hw_init_v1_v2, align 4
  %48 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %49 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @alps_process_packet_v1_v2, align 8
  %51 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %52 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @alps_set_abs_params_st, align 8
  %54 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %55 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %57 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %56, i32 0, i32 1
  store i32 1023, i32* %57, align 4
  %58 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %59 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %58, i32 0, i32 2
  store i32 767, i32* %59, align 8
  %60 = load i32, i32* @alps_dmi_has_separate_stick_buttons, align 4
  %61 = call i32 @dmi_check_system(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load i32, i32* @ALPS_STICK_BITS, align 4
  %65 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %66 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %46
  br label %275

70:                                               ; preds = %3
  %71 = load i32, i32* @alps_hw_init_v3, align 4
  %72 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %73 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** @alps_process_packet_v3, align 8
  %75 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %76 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @alps_set_abs_params_semi_mt, align 8
  %78 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %79 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %78, i32 0, i32 8
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @alps_decode_pinnacle, align 4
  %81 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %82 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %84 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %85 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %84, i32 0, i32 7
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %87 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %88 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %90 = load i32, i32* @ALPS_REG_BASE_PINNACLE, align 4
  %91 = call i32 @alps_probe_trackstick_v3_v7(%struct.psmouse* %89, i32 %90)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %70
  %94 = load i32, i32* @ALPS_DUALPOINT, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %97 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %70
  br label %275

101:                                              ; preds = %3
  %102 = load i32, i32* @alps_hw_init_rushmore_v3, align 4
  %103 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %104 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** @alps_process_packet_v3, align 8
  %106 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %107 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @alps_set_abs_params_semi_mt, align 8
  %109 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %110 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* @alps_decode_rushmore, align 4
  %112 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %113 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %115 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %116 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %118 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %119 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %121 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %120, i32 0, i32 3
  store i32 16, i32* %121, align 4
  %122 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %123 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %122, i32 0, i32 4
  store i32 12, i32* %123, align 8
  %124 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %125 = load i32, i32* @ALPS_REG_BASE_RUSHMORE, align 4
  %126 = call i32 @alps_probe_trackstick_v3_v7(%struct.psmouse* %124, i32 %125)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %101
  %129 = load i32, i32* @ALPS_DUALPOINT, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %132 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %131, i32 0, i32 12
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %101
  br label %275

136:                                              ; preds = %3
  %137 = load i32, i32* @alps_hw_init_v4, align 4
  %138 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %139 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** @alps_process_packet_v4, align 8
  %141 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %142 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %141, i32 0, i32 10
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** @alps_set_abs_params_semi_mt, align 8
  %144 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %145 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %144, i32 0, i32 8
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @alps_v4_nibble_commands, align 8
  %147 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %148 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %147, i32 0, i32 7
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @PSMOUSE_CMD_DISABLE, align 8
  %150 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %151 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  br label %275

152:                                              ; preds = %3
  %153 = load i32, i32* @alps_hw_init_dolphin_v1, align 4
  %154 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %155 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %154, i32 0, i32 11
  store i32 %153, i32* %155, align 8
  %156 = load i8*, i8** @alps_process_touchpad_packet_v3_v5, align 8
  %157 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %158 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @alps_decode_dolphin, align 4
  %160 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %161 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 8
  %162 = load i8*, i8** @alps_set_abs_params_semi_mt, align 8
  %163 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %164 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %163, i32 0, i32 8
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %166 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %167 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %166, i32 0, i32 7
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %169 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %170 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  %171 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %172 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %171, i32 0, i32 3
  store i32 23, i32* %172, align 4
  %173 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %174 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %173, i32 0, i32 4
  store i32 12, i32* %174, align 8
  %175 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %176 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %177 = call i32 @alps_dolphin_get_device_area(%struct.psmouse* %175, %struct.alps_data* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %152
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %276

182:                                              ; preds = %152
  br label %275

183:                                              ; preds = %3
  %184 = load i32, i32* @alps_hw_init_v6, align 4
  %185 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %186 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %185, i32 0, i32 11
  store i32 %184, i32* %186, align 8
  %187 = load i8*, i8** @alps_process_packet_v6, align 8
  %188 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %189 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %188, i32 0, i32 10
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @alps_set_abs_params_st, align 8
  %191 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %192 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %191, i32 0, i32 8
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** @alps_v6_nibble_commands, align 8
  %194 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %195 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %194, i32 0, i32 7
  store i8* %193, i8** %195, align 8
  %196 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %197 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %196, i32 0, i32 1
  store i32 2047, i32* %197, align 4
  %198 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %199 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %198, i32 0, i32 2
  store i32 1535, i32* %199, align 8
  br label %275

200:                                              ; preds = %3
  %201 = load i32, i32* @alps_hw_init_v7, align 4
  %202 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %203 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %202, i32 0, i32 11
  store i32 %201, i32* %203, align 8
  %204 = load i8*, i8** @alps_process_packet_v7, align 8
  %205 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %206 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %205, i32 0, i32 10
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* @alps_decode_packet_v7, align 4
  %208 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %209 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %208, i32 0, i32 9
  store i32 %207, i32* %209, align 8
  %210 = load i8*, i8** @alps_set_abs_params_v7, align 8
  %211 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %212 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %211, i32 0, i32 8
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %214 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %215 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %214, i32 0, i32 7
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %217 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %218 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %217, i32 0, i32 6
  store i8* %216, i8** %218, align 8
  %219 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %220 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %219, i32 0, i32 1
  store i32 4095, i32* %220, align 4
  %221 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %222 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %221, i32 0, i32 2
  store i32 2047, i32* %222, align 8
  %223 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %224 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 186
  br i1 %228, label %229, label %235

229:                                              ; preds = %200
  %230 = load i32, i32* @ALPS_BUTTONPAD, align 4
  %231 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %232 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %231, i32 0, i32 12
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %229, %200
  %236 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %237 = load i32, i32* @ALPS_REG_BASE_V7, align 4
  %238 = call i32 @alps_probe_trackstick_v3_v7(%struct.psmouse* %236, i32 %237)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load i32, i32* @ALPS_DUALPOINT, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %244 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %243, i32 0, i32 12
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %240, %235
  br label %275

248:                                              ; preds = %3
  %249 = load i32, i32* @alps_hw_init_ss4_v2, align 4
  %250 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %251 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %250, i32 0, i32 11
  store i32 %249, i32* %251, align 8
  %252 = load i8*, i8** @alps_process_packet_ss4_v2, align 8
  %253 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %254 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %253, i32 0, i32 10
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* @alps_decode_ss4_v2, align 4
  %256 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %257 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 8
  %258 = load i8*, i8** @alps_set_abs_params_ss4_v2, align 8
  %259 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %260 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %259, i32 0, i32 8
  store i8* %258, i8** %260, align 8
  %261 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %262 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %263 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %262, i32 0, i32 7
  store i8* %261, i8** %263, align 8
  %264 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %265 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %266 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %265, i32 0, i32 6
  store i8* %264, i8** %266, align 8
  %267 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %268 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %269 = call i32 @alps_set_defaults_ss4_v2(%struct.psmouse* %267, %struct.alps_data* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %248
  %272 = load i32, i32* @EIO, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %4, align 4
  br label %276

274:                                              ; preds = %248
  br label %275

275:                                              ; preds = %3, %274, %247, %183, %182, %136, %135, %100, %69
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %275, %271, %179
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @alps_probe_trackstick_v3_v7(%struct.psmouse*, i32) #1

declare dso_local i32 @alps_dolphin_get_device_area(%struct.psmouse*, %struct.alps_data*) #1

declare dso_local i32 @alps_set_defaults_ss4_v2(%struct.psmouse*, %struct.alps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
