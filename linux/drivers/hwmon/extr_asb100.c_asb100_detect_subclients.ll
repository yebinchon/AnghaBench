; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_detect_subclients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_detect_subclients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.asb100_data = type { i8** }

@force_subclients = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"invalid subclient address %d; must be 0x48-0x4f\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ASB100_REG_I2C_SUBADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"duplicate addresses 0x%x for subclients\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"subclient %d registration at address 0x%x failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @asb100_detect_subclients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asb100_detect_subclients(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i16], align 2
  %9 = alloca %struct.asb100_data*, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.asb100_data* %16, %struct.asb100_data** %9, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %10, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %21 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** @force_subclients, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %90

27:                                               ; preds = %1
  %28 = load i32*, i32** @force_subclients, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %27
  store i32 2, i32* %4, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 3
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32*, i32** @force_subclients, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 72
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i32*, i32** @force_subclients, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 79
  br i1 %50, label %51, label %62

51:                                               ; preds = %44, %37
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = load i32*, i32** @force_subclients, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %188

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i32, i32* @ASB100_REG_I2C_SUBADDR, align 4
  %69 = load i32*, i32** @force_subclients, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 7
  %73 = load i32*, i32** @force_subclients, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 7
  %77 = shl i32 %76, 4
  %78 = or i32 %72, %77
  %79 = call i32 @asb100_write_value(%struct.i2c_client* %67, i32 %68, i32 %78)
  %80 = load i32*, i32** @force_subclients, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  store i16 %83, i16* %84, align 2
  %85 = load i32*, i32** @force_subclients, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  store i16 %88, i16* %89, align 2
  br label %105

90:                                               ; preds = %27, %1
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i32, i32* @ASB100_REG_I2C_SUBADDR, align 4
  %93 = call i32 @asb100_read_value(%struct.i2c_client* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 7
  %96 = add nsw i32 72, %95
  %97 = trunc i32 %96 to i16
  %98 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  store i16 %97, i16* %98, align 2
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 7
  %102 = add nsw i32 72, %101
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  store i16 %103, i16* %104, align 2
  br label %105

105:                                              ; preds = %90, %66
  %106 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %107 = load i16, i16* %106, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  %110 = load i16, i16* %109, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %188

122:                                              ; preds = %105
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %124 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %125 = load i16, i16* %124, align 2
  %126 = call i8* @i2c_new_dummy_device(%struct.i2c_adapter* %123, i16 zeroext %125)
  %127 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %128 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  store i8* %126, i8** %130, align 8
  %131 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %132 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %122
  %139 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %142 = load i16, i16* %141, align 2
  %143 = zext i16 %142 to i32
  %144 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %143)
  %145 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %146 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @PTR_ERR(i8* %149)
  store i32 %150, i32* %6, align 4
  br label %188

151:                                              ; preds = %122
  %152 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %153 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  %154 = load i16, i16* %153, align 2
  %155 = call i8* @i2c_new_dummy_device(%struct.i2c_adapter* %152, i16 zeroext %154)
  %156 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %157 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  store i8* %155, i8** %159, align 8
  %160 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %161 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @IS_ERR(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %151
  %168 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 1
  %170 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  %171 = load i16, i16* %170, align 2
  %172 = zext i16 %171 to i32
  %173 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %172)
  %174 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %175 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %174, i32 0, i32 0
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @PTR_ERR(i8* %178)
  store i32 %179, i32* %6, align 4
  br label %181

180:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %190

181:                                              ; preds = %167
  %182 = load %struct.asb100_data*, %struct.asb100_data** %9, align 8
  %183 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %182, i32 0, i32 0
  %184 = load i8**, i8*** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @i2c_unregister_device(i8* %186)
  br label %188

188:                                              ; preds = %181, %138, %113, %51
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %180
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @asb100_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @asb100_read_value(%struct.i2c_client*, i32) #1

declare dso_local i8* @i2c_new_dummy_device(%struct.i2c_adapter*, i16 zeroext) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @i2c_unregister_device(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
