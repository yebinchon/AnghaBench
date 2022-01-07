; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_sch56xx_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_sch56xx_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCH56XX_CMD_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Max retries exceeded reading virtual register 0x%04hx (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"EC reports: 0x%02x reading virtual register 0x%04hx\0A\00", align 1
@SCH56XX_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sch56xx_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch56xx_send_cmd(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 64, i32* %12, align 4
  store i32 32, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @inb(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @outb(i32 %17, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @outb(i32 0, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 3
  %26 = call i32 @outb(i32 128, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @outb(i32 %27, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 5
  %33 = call i32 @outb(i32 1, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i32 @outb(i32 4, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SCH56XX_CMD_WRITE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 4
  %44 = call i32 @outb(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 255
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 6
  %50 = call i32 @outb(i32 %47, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 7
  %55 = call i32 @outb(i32 %52, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @outb(i32 1, i32 %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %83, %45
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 96
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp sge i32 %62, 64
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @msleep(i32 1)
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 8
  %69 = call i32 @inb(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 8
  %76 = call i32 @outb(i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %86

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %58

86:                                               ; preds = %81, %58
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 96
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %90, i32 1)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %133

94:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 64
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 @inb(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %116

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %105
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %95

116:                                              ; preds = %104, %95
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 64
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %120, i32 2)
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %133

124:                                              ; preds = %116
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SCH56XX_CMD_READ, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 4
  %131 = call i32 @inb(i32 %130)
  store i32 %131, i32* %5, align 4
  br label %133

132:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %128, %119, %89
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
