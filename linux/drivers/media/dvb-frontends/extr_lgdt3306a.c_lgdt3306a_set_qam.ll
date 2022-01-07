; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_set_qam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_set_qam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"modulation=%d\0A\00", align 1
@forced_manual = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*, i32)* @lgdt3306a_set_qam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_set_qam(%struct.lgdt3306a_state* %0, i32 %1) #0 {
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %10 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %9, i32 8, i32 8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @lg_chkerr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %161

15:                                               ; preds = %2
  %16 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %17 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %16, i32 2, i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 251
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %22, i32 2, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @lg_chkerr(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %161

29:                                               ; preds = %15
  %30 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %31 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %30, i32 9, i32* %5)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 227
  store i32 %33, i32* %5, align 4
  %34 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %34, i32 9, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @lg_chkerr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %161

41:                                               ; preds = %29
  %42 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %43 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %42, i32 9, i32* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 252
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* @forced_manual, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @QAM_AUTO, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %48, %41
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 2
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %59, i32 9, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @lg_chkerr(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %161

66:                                               ; preds = %58
  %67 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %68 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %67, i32 4122, i32* %5)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 248
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @QAM_64, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, 2
  store i32 %76, i32* %5, align 4
  br label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %81, i32 4122, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @lg_chkerr(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %161

88:                                               ; preds = %80
  %89 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %90 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %89, i32 13, i32* %5)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, 191
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, 64
  store i32 %94, i32* %5, align 4
  %95 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %95, i32 13, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @lg_chkerr(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %161

102:                                              ; preds = %88
  %103 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %104 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %103, i32 36, i32* %5)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, 0
  store i32 %106, i32* %5, align 4
  %107 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %107, i32 36, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @lg_chkerr(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %161

114:                                              ; preds = %102
  %115 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %116 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %115, i32 10, i32* %5)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 253
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, 2
  store i32 %120, i32* %5, align 4
  %121 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %121, i32 10, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @lg_chkerr(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %161

128:                                              ; preds = %114
  %129 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %130 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %129, i32 10313, i32* %5)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, 223
  store i32 %132, i32* %5, align 4
  %133 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %133, i32 10313, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @lg_chkerr(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %161

140:                                              ; preds = %128
  %141 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %142 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %141, i32 12331, i32* %5)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %5, align 4
  %144 = and i32 %143, 127
  store i32 %144, i32* %5, align 4
  %145 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %145, i32 12331, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i64 @lg_chkerr(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %161

152:                                              ; preds = %140
  %153 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %154 = call i32 @lgdt3306a_soft_reset(%struct.lgdt3306a_state* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i64 @lg_chkerr(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %161

159:                                              ; preds = %152
  %160 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %158, %151, %139, %127, %113, %101, %87, %65, %40, %28, %14
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @dbg_info(i8*, ...) #1

declare dso_local i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state*, i32, i32) #1

declare dso_local i64 @lg_chkerr(i32) #1

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i32 @lgdt3306a_soft_reset(%struct.lgdt3306a_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
