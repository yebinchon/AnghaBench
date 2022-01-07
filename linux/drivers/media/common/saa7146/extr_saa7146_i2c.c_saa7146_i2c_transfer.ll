; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_i2c.c_saa7146_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_i2c.c_saa7146_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.i2c_msg = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"msg:%d/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SAA7146_I2C_SHORT_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not reset i2c-device\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@SAA7146_USE_I2C_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"error while sending message(s). starting again\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not cleanup i2c-message\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"transmission successful. (msg:%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"revision 0 error. this should never happen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.i2c_msg*, i32, i32)* @saa7146_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7146_i2c_transfer(%struct.saa7146_dev* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %21 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %20, i32 0, i32 1
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %163

27:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @DEB_I2C(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @saa7146_i2c_msg_prepare(%struct.i2c_msg* %41, i32 %42, i32* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 0, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  br label %143

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @SAA7146_I2C_SHORT_DELAY, align 4
  %55 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %56 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %54, %59
  %61 = icmp ne i32 0, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %50
  store i32 1, i32* %14, align 4
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %123, %63
  %65 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %66 = call i32 @saa7146_i2c_reset(%struct.saa7146_dev* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 0, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @DEB_I2C(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %143

71:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %105, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @saa7146_i2c_writeout(%struct.saa7146_dev* %77, i32* %81, i32 %82)
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 0, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %76
  %88 = load i32, i32* @EREMOTEIO, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* @SAA7146_USE_I2C_IRQ, align 4
  %94 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %95 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %93, %98
  %100 = icmp ne i32 0, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %143

102:                                              ; preds = %92, %87
  %103 = call i32 (i8*, ...) @DEB_I2C(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %108

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %72

108:                                              ; preds = %102, %72
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 0, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %13, align 4
  br label %125

113:                                              ; preds = %108
  %114 = call i32 @msleep(i32 10)
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %9, align 4
  %122 = icmp ne i32 %120, 0
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i1 [ false, %115 ], [ %122, %119 ]
  br i1 %124, label %64, label %125

125:                                              ; preds = %123, %111
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %143

130:                                              ; preds = %125
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = call i64 @saa7146_i2c_msg_cleanup(%struct.i2c_msg* %131, i32 %132, i32* %133)
  %135 = icmp ne i64 0, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = call i32 (i8*, ...) @DEB_I2C(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %13, align 4
  br label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %13, align 4
  %142 = call i32 (i8*, ...) @DEB_I2C(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %136, %129, %101, %69, %47
  %144 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %145 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 0, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  store i32 0, i32* %15, align 4
  %149 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %150 = call i32 @saa7146_i2c_reset(%struct.saa7146_dev* %149)
  %151 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i64 @saa7146_i2c_writeout(%struct.saa7146_dev* %151, i32* %15, i32 %152)
  %154 = icmp ne i64 0, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %148
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %160 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %159, i32 0, i32 1
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %158, %24
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @DEB_I2C(i8*, ...) #1

declare dso_local i32 @saa7146_i2c_msg_prepare(%struct.i2c_msg*, i32, i32*) #1

declare dso_local i32 @saa7146_i2c_reset(%struct.saa7146_dev*) #1

declare dso_local i64 @saa7146_i2c_writeout(%struct.saa7146_dev*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @saa7146_i2c_msg_cleanup(%struct.i2c_msg*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
