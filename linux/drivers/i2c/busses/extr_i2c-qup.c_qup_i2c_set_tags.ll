; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_set_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_set_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32 }

@QUP_TAG_V2_START = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@QUP_TAG_V2_DATARD_STOP = common dso_local global i32 0, align 4
@QUP_TAG_V2_DATAWR_STOP = common dso_local global i32 0, align 4
@QUP_TAG_V2_DATARD_NACK = common dso_local global i32 0, align 4
@QUP_TAG_V2_DATARD = common dso_local global i32 0, align 4
@QUP_TAG_V2_DATAWR = common dso_local global i32 0, align 4
@QUP_READ_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.qup_i2c_dev*, %struct.i2c_msg*)* @qup_i2c_set_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_set_tags(i32* %0, %struct.qup_i2c_dev* %1, %struct.i2c_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qup_i2c_dev*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.qup_i2c_dev* %1, %struct.qup_i2c_dev** %6, align 8
  store %struct.i2c_msg* %2, %struct.i2c_msg** %7, align 8
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %13 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %15 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %26 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %3
  %30 = phi i1 [ false, %3 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %33 = call i64 @qup_i2c_check_msg_len(%struct.i2c_msg* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %40 = call i32 @qup_i2c_set_tags_smb(i32 %36, i32* %37, %struct.qup_i2c_dev* %38, %struct.i2c_msg* %39)
  store i32 %40, i32* %4, align 4
  br label %159

41:                                               ; preds = %29
  %42 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %43 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load i32, i32* @QUP_TAG_V2_START, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 255
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I2C_M_TEN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %47
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %47
  br label %76

76:                                               ; preds = %75, %41
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @I2C_M_RD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* @QUP_TAG_V2_DATARD_STOP, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  br label %100

93:                                               ; preds = %79
  %94 = load i32, i32* @QUP_TAG_V2_DATAWR_STOP, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %86
  br label %138

101:                                              ; preds = %76
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @I2C_M_RD, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %101
  %109 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %110 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %114 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %112, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @QUP_TAG_V2_DATARD_NACK, align 4
  br label %123

121:                                              ; preds = %108
  %122 = load i32, i32* @QUP_TAG_V2_DATARD, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %124, i32* %129, align 4
  br label %137

130:                                              ; preds = %101
  %131 = load i32, i32* @QUP_TAG_V2_DATAWR, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %100
  %139 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %140 = call i32 @qup_i2c_get_data_len(%struct.qup_i2c_dev* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @QUP_READ_LIMIT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 0, i32* %149, align 4
  br label %157

150:                                              ; preds = %138
  %151 = load i32, i32* %10, align 4
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 %151, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %144
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %35
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i64 @qup_i2c_check_msg_len(%struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_set_tags_smb(i32, i32*, %struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_get_data_len(%struct.qup_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
