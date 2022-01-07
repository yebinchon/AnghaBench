; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_init_smcreg_try.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_init_smcreg_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applesmc_registers = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32* }

@smcreg = common dso_local global %struct.applesmc_registers zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"key count changed from %d to %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FANS_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@LIGHT_SENSOR_LEFT_KEY = common dso_local global i32 0, align 4
@LIGHT_SENSOR_RIGHT_KEY = common dso_local global i32 0, align 4
@MOTION_SENSOR_KEY = common dso_local global i32 0, align 4
@BACKLIGHT_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"key=%d fan=%d temp=%d index=%d acc=%d lux=%d kbd=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @applesmc_init_smcreg_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_init_smcreg_try() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.applesmc_registers*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.applesmc_registers* @smcreg, %struct.applesmc_registers** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %9 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %180

13:                                               ; preds = %0
  %14 = call i32 @read_register_count(i32* %5)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %1, align 4
  br label %180

19:                                               ; preds = %13
  %20 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %21 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %26 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %32 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %37 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %41 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %40, i32 0, i32 10
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %30, %24, %19
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %45 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %47 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %52 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kcalloc(i32 %53, i32 4, i32 %54)
  %56 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %57 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %56, i32 0, i32 10
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %60 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %1, align 4
  br label %180

66:                                               ; preds = %58
  %67 = load i32, i32* @FANS_COUNT, align 4
  %68 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %69 = call i32 @applesmc_read_key(i32 %67, i32* %68, i32 1)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %1, align 4
  br label %180

74:                                               ; preds = %66
  %75 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %78 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %80 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 10
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %85 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %84, i32 0, i32 2
  store i32 10, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %88 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %87, i32 0, i32 8
  %89 = call i32 @applesmc_get_lower_bound(i64* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %1, align 4
  br label %180

94:                                               ; preds = %86
  %95 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %96 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %95, i32 0, i32 9
  %97 = call i32 @applesmc_get_lower_bound(i64* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %1, align 4
  br label %180

102:                                              ; preds = %94
  %103 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %104 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %107 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %106, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %111 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %113 = call i32 @applesmc_init_index(%struct.applesmc_registers* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %1, align 4
  br label %180

118:                                              ; preds = %102
  %119 = load i32, i32* @LIGHT_SENSOR_LEFT_KEY, align 4
  %120 = call i32 @applesmc_has_key(i32 %119, i32* %3)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %1, align 4
  br label %180

125:                                              ; preds = %118
  %126 = load i32, i32* @LIGHT_SENSOR_RIGHT_KEY, align 4
  %127 = call i32 @applesmc_has_key(i32 %126, i32* %4)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %1, align 4
  br label %180

132:                                              ; preds = %125
  %133 = load i32, i32* @MOTION_SENSOR_KEY, align 4
  %134 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %135 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %134, i32 0, i32 3
  %136 = call i32 @applesmc_has_key(i32 %133, i32* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %1, align 4
  br label %180

141:                                              ; preds = %132
  %142 = load i32, i32* @BACKLIGHT_KEY, align 4
  %143 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %144 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %143, i32 0, i32 4
  %145 = call i32 @applesmc_has_key(i32 %142, i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %1, align 4
  br label %180

150:                                              ; preds = %141
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %155 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %157 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %159 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %162 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %165 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %164, i32 0, i32 7
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %168 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %171 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %174 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.applesmc_registers*, %struct.applesmc_registers** %2, align 8
  %177 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %163, i64 %166, i32 %169, i32 %172, i32 %175, i32 %178)
  store i32 0, i32* %1, align 4
  br label %180

180:                                              ; preds = %150, %148, %139, %130, %123, %116, %100, %92, %72, %63, %17, %12
  %181 = load i32, i32* %1, align 4
  ret i32 %181
}

declare dso_local i32 @read_register_count(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @applesmc_get_lower_bound(i64*, i8*) #1

declare dso_local i32 @applesmc_init_index(%struct.applesmc_registers*) #1

declare dso_local i32 @applesmc_has_key(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
