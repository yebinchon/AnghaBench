; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32*, i32, i32, i32, %struct.alps_data* }
%struct.alps_data = type { i64, i32, {}*, i32, i32 }

@ALPS_PROTO_V8 = common dso_local global i64 0, align 8
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@ALPS_PS2_INTERLEAVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"refusing packet[0] = %x (mask0 = %x, byte0 = %x)\0A\00", align 1
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@ALPS_PROTO_V5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"refusing packet[%i] = %x\0A\00", align 1
@ALPS_PROTO_V3_RUSHMORE = common dso_local global i64 0, align 8
@ALPS_PROTO_V7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 4
  %7 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  store %struct.alps_data* %7, %struct.alps_data** %4, align 8
  %8 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %9 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ALPS_PROTO_V8, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 200
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %34 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @alps_report_bare_ps2_packet(%struct.psmouse* %32, i32* %35, i32 1)
  %37 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %37, i32* %2, align 4
  br label %209

38:                                               ; preds = %26
  %39 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %39, i32* %2, align 4
  br label %209

40:                                               ; preds = %18, %13, %1
  %41 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %42 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ALPS_PS2_INTERLEAVED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = icmp eq i32 %58, 15
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %62 = call i32 @alps_handle_interleaved_ps2(%struct.psmouse* %61)
  store i32 %62, i32* %2, align 4
  br label %209

63:                                               ; preds = %52, %47, %40
  %64 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %65 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %66 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @alps_is_valid_first_byte(%struct.alps_data* %64, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %63
  %73 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %74 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %75 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %80 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %83 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.psmouse*, i8*, i32, i32, ...) @psmouse_dbg(%struct.psmouse* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  %86 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %86, i32* %2, align 4
  br label %209

87:                                               ; preds = %63
  %88 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %89 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ALPS_PROTO_V5, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %153

93:                                               ; preds = %87
  %94 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %95 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 2
  br i1 %97, label %98, label %153

98:                                               ; preds = %93
  %99 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %100 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %103 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %153

106:                                              ; preds = %98
  %107 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %108 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %111 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 128
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %106
  %120 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %121 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %122 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %126 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %129 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.psmouse*, i8*, i32, i32, ...) @psmouse_dbg(%struct.psmouse* %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %134)
  %136 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %137 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ALPS_PROTO_V3_RUSHMORE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %119
  %142 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %143 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %146 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %150, i32* %2, align 4
  br label %209

151:                                              ; preds = %141, %119
  %152 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %152, i32* %2, align 4
  br label %209

153:                                              ; preds = %106, %98, %93, %87
  %154 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %155 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ALPS_PROTO_V7, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %161 = call i32 @alps_is_valid_package_v7(%struct.psmouse* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159, %153
  %164 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %165 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ALPS_PROTO_V8, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %163
  %170 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %171 = call i32 @alps_is_valid_package_ss4_v2(%struct.psmouse* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %191, label %173

173:                                              ; preds = %169, %159
  %174 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %175 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %176 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %180 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %183 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %181, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (%struct.psmouse*, i8*, i32, i32, ...) @psmouse_dbg(%struct.psmouse* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %188)
  %190 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %190, i32* %2, align 4
  br label %209

191:                                              ; preds = %169, %163
  %192 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %193 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %196 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %191
  %200 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %201 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %200, i32 0, i32 2
  %202 = bitcast {}** %201 to i32 (%struct.psmouse*)**
  %203 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %202, align 8
  %204 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %205 = call i32 %203(%struct.psmouse* %204)
  %206 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %206, i32* %2, align 4
  br label %209

207:                                              ; preds = %191
  %208 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %199, %173, %151, %149, %72, %60, %38, %31
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @alps_report_bare_ps2_packet(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @alps_handle_interleaved_ps2(%struct.psmouse*) #1

declare dso_local i32 @alps_is_valid_first_byte(%struct.alps_data*, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32, ...) #1

declare dso_local i32 @alps_is_valid_package_v7(%struct.psmouse*) #1

declare dso_local i32 @alps_is_valid_package_ss4_v2(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
