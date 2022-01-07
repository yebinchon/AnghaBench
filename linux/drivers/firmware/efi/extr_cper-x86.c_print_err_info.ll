; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-x86.c_print_err_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-x86.c_print_err_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_TYPE_MS = common dso_local global i64 0, align 8
@CHECK_VALID_TRANS_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%sTransaction Type: %u, %s\0A\00", align 1
@ia_check_trans_type_strs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@CHECK_VALID_OPERATION = common dso_local global i32 0, align 4
@ERR_TYPE_CACHE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%sOperation: %u, %s\0A\00", align 1
@ia_check_op_strs = common dso_local global i8** null, align 8
@CHECK_VALID_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%sLevel: %llu\0A\00", align 1
@CHECK_VALID_PCC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Processor Context Corrupt\00", align 1
@CHECK_PCC = common dso_local global i32 0, align 4
@CHECK_VALID_UNCORRECTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Uncorrected\00", align 1
@CHECK_UNCORRECTED = common dso_local global i32 0, align 4
@CHECK_VALID_PRECISE_IP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Precise IP\00", align 1
@CHECK_PRECISE_IP = common dso_local global i32 0, align 4
@CHECK_VALID_RESTARTABLE_IP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Restartable IP\00", align 1
@CHECK_RESTARTABLE_IP = common dso_local global i32 0, align 4
@CHECK_VALID_OVERFLOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@CHECK_OVERFLOW = common dso_local global i32 0, align 4
@ERR_TYPE_BUS = common dso_local global i64 0, align 8
@CHECK_VALID_BUS_PART_TYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"%sParticipation Type: %u, %s\0A\00", align 1
@ia_check_bus_part_type_strs = common dso_local global i8** null, align 8
@CHECK_VALID_BUS_TIME_OUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"Time Out\00", align 1
@CHECK_BUS_TIME_OUT = common dso_local global i32 0, align 4
@CHECK_VALID_BUS_ADDR_SPACE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"%sAddress Space: %u, %s\0A\00", align 1
@ia_check_bus_addr_space_strs = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @print_err_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_err_info(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CHECK_VALID_BITS(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ERR_TYPE_MS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  call void @print_err_info_ms(i8* %19, i32 %20, i32 %21)
  br label %195

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CHECK_VALID_TRANS_TYPE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @CHECK_TRANS_TYPE(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i8**, i8*** @ia_check_trans_type_strs, align 8
  %34 = call i64 @ARRAY_SIZE(i8** %33)
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i8**, i8*** @ia_check_trans_type_strs, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i8* [ %40, %36 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i64 %31, i8* %43)
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CHECK_VALID_OPERATION, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @CHECK_OPERATION(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @ERR_TYPE_CACHE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 9, i32 7
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load i8**, i8*** @ia_check_op_strs, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  br label %70

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i8* [ %68, %64 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %69 ]
  %72 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %59, i64 %60, i8* %71)
  br label %73

73:                                               ; preds = %70, %45
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @CHECK_VALID_LEVEL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @CHECK_LEVEL(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %79, i64 %82)
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @CHECK_VALID_PCC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @CHECK_PCC, align 4
  %93 = call i32 @print_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @CHECK_VALID_UNCORRECTED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @CHECK_UNCORRECTED, align 4
  %103 = call i32 @print_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @CHECK_VALID_PRECISE_IP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @CHECK_PRECISE_IP, align 4
  %113 = call i32 @print_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @CHECK_VALID_RESTARTABLE_IP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @CHECK_RESTARTABLE_IP, align 4
  %123 = call i32 @print_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @CHECK_VALID_OVERFLOW, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @CHECK_OVERFLOW, align 4
  %133 = call i32 @print_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @ERR_TYPE_BUS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %195

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @CHECK_VALID_BUS_PART_TYPE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = call i64 @CHECK_BUS_PART_TYPE(i32 %145)
  store i64 %146, i64* %11, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i8**, i8*** @ia_check_bus_part_type_strs, align 8
  %151 = call i64 @ARRAY_SIZE(i8** %150)
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load i8**, i8*** @ia_check_bus_part_type_strs, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds i8*, i8** %154, i64 %155
  %157 = load i8*, i8** %156, align 8
  br label %159

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158, %153
  %160 = phi i8* [ %157, %153 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %158 ]
  %161 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %147, i64 %148, i8* %160)
  br label %162

162:                                              ; preds = %159, %139
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @CHECK_VALID_BUS_TIME_OUT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i8*, i8** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @CHECK_BUS_TIME_OUT, align 4
  %171 = call i32 @print_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @CHECK_VALID_BUS_ADDR_SPACE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %172
  %178 = load i32, i32* %6, align 4
  %179 = call i64 @CHECK_BUS_ADDR_SPACE(i32 %178)
  store i64 %179, i64* %12, align 8
  %180 = load i8*, i8** %4, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %12, align 8
  %183 = load i8**, i8*** @ia_check_bus_addr_space_strs, align 8
  %184 = call i64 @ARRAY_SIZE(i8** %183)
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %177
  %187 = load i8**, i8*** @ia_check_bus_addr_space_strs, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds i8*, i8** %187, i64 %188
  %190 = load i8*, i8** %189, align 8
  br label %192

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191, %186
  %193 = phi i8* [ %190, %186 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %191 ]
  %194 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %180, i64 %181, i8* %193)
  br label %195

195:                                              ; preds = %18, %138, %192, %172
  ret void
}

declare dso_local i32 @CHECK_VALID_BITS(i32) #1

declare dso_local void @print_err_info_ms(i8*, i32, i32) #1

declare dso_local i64 @CHECK_TRANS_TYPE(i32) #1

declare dso_local i32 @printk(i8*, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @CHECK_OPERATION(i32) #1

declare dso_local i32 @CHECK_LEVEL(i32) #1

declare dso_local i32 @print_bool(i8*, i8*, i32, i32) #1

declare dso_local i64 @CHECK_BUS_PART_TYPE(i32) #1

declare dso_local i64 @CHECK_BUS_ADDR_SPACE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
