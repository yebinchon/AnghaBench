; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i8**, i64*, i32*, i32* }

@W83627EHF_REG_CONFIG = common dso_local global i32 0, align 4
@NUM_REG_TEMP = common dso_local global i32 0, align 4
@W83627EHF_REG_VBAT = common dso_local global i32 0, align 4
@W83627EHF_REG_DIODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PECI\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"AMD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*, i32)* @w83627ehf_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_init_device(%struct.w83627ehf_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83627ehf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %10 = load i32, i32* @W83627EHF_REG_CONFIG, align 4
  %11 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %17 = load i32, i32* @W83627EHF_REG_CONFIG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 1
  %20 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %16, i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %71, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NUM_REG_TEMP, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %28 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %71

35:                                               ; preds = %26
  %36 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %37 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %71

45:                                               ; preds = %35
  %46 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %47 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %48 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %46, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %45
  %59 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %60 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %61 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 254
  %69 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %59, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %58, %45
  br label %71

71:                                               ; preds = %70, %44, %34
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %76 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %77 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %83 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, 1
  %86 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %82, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i32, i32* %4, align 4
  switch i32 %88, label %94 [
    i32 129, label %89
    i32 128, label %93
  ]

89:                                               ; preds = %87
  %90 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %91 = load i32, i32* @W83627EHF_REG_DIODE, align 4
  %92 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %95

93:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %95

94:                                               ; preds = %87
  store i32 112, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %93, %89
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %175, %95
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %178

99:                                               ; preds = %96
  store i8* null, i8** %8, align 8
  %100 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %101 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = icmp ne i8** %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %106 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %109 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8*, i8** %107, i64 %114
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %8, align 8
  br label %117

117:                                              ; preds = %104, %99
  %118 = load i8*, i8** %8, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = call i64 @strncmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %126 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 6, i32* %130, align 4
  br label %174

131:                                              ; preds = %120, %117
  %132 = load i8*, i8** %8, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load i8*, i8** %8, align 8
  %136 = call i64 @strncmp(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %140 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 5, i32* %144, align 4
  br label %173

145:                                              ; preds = %134, %131
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %5, align 4
  %148 = shl i32 2, %147
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %5, align 4
  %154 = shl i32 16, %153
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 3
  %159 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %160 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %172

165:                                              ; preds = %145
  %166 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %167 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 4, i32* %171, align 4
  br label %172

172:                                              ; preds = %165, %151
  br label %173

173:                                              ; preds = %172, %138
  br label %174

174:                                              ; preds = %173, %124
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %96

178:                                              ; preds = %96
  ret void
}

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
