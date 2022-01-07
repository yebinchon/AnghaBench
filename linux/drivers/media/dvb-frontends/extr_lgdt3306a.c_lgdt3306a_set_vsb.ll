; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_set_vsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_set_vsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_set_vsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_set_vsb(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca %struct.lgdt3306a_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %2, align 8
  %5 = call i32 @dbg_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %7 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %6, i32 2, i32* %3)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 247
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %12, i32 2, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @lg_chkerr(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %188

19:                                               ; preds = %1
  %20 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %21 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %20, i32 8, i32 128)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @lg_chkerr(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %188

26:                                               ; preds = %19
  %27 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %28 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %27, i32 9, i32* %3)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 227
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 12
  store i32 %32, i32* %3, align 4
  %33 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %33, i32 9, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @lg_chkerr(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %188

40:                                               ; preds = %26
  %41 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %42 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %41, i32 9, i32* %3)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 252
  store i32 %44, i32* %3, align 4
  %45 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %45, i32 9, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @lg_chkerr(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %188

52:                                               ; preds = %40
  %53 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %54 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %53, i32 13, i32* %3)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 191
  store i32 %56, i32* %3, align 4
  %57 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %57, i32 13, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @lg_chkerr(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %188

64:                                               ; preds = %52
  %65 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %66 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %65, i32 36, i32 90)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @lg_chkerr(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %188

71:                                               ; preds = %64
  %72 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %73 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %72, i32 46, i32 90)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %75 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %74, i32 47, i32 0)
  store i32 %75, i32* %4, align 4
  %76 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %77 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %76, i32 48, i32 0)
  store i32 %77, i32* %4, align 4
  %78 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %79 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %78, i32 43, i32 54)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %81 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %80, i32 44, i32 0)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %83 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %82, i32 45, i32 0)
  store i32 %83, i32* %4, align 4
  %84 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %85 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %84, i32 40, i32 42)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %87 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %86, i32 41, i32 0)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %89 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %88, i32 42, i32 0)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %91 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %90, i32 37, i32 6)
  store i32 %91, i32* %4, align 4
  %92 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %93 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %92, i32 38, i32 0)
  store i32 %93, i32* %4, align 4
  %94 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %95 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %94, i32 39, i32 0)
  store i32 %95, i32* %4, align 4
  %96 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %97 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %96, i32 30, i32* %3)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, 15
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, 160
  store i32 %101, i32* %3, align 4
  %102 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %102, i32 30, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %106 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %105, i32 34, i32 8)
  store i32 %106, i32* %4, align 4
  %107 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %108 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %107, i32 35, i32 255)
  store i32 %108, i32* %4, align 4
  %109 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %110 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %109, i32 8479, i32* %3)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, 239
  store i32 %112, i32* %3, align 4
  %113 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %113, i32 8479, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %117 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %116, i32 8563, i32 1)
  store i32 %117, i32* %4, align 4
  %118 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %119 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %118, i32 4193, i32* %3)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %3, align 4
  %121 = and i32 %120, 248
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, 4
  store i32 %123, i32* %3, align 4
  %124 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %124, i32 4193, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %128 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %127, i32 4157, i32* %3)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, 207
  store i32 %130, i32* %3, align 4
  %131 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %131, i32 4157, i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %135 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %134, i32 8482, i32 64)
  store i32 %135, i32* %4, align 4
  %136 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %137 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %136, i32 8513, i32* %3)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %3, align 4
  %139 = and i32 %138, 63
  store i32 %139, i32* %3, align 4
  %140 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %140, i32 8513, i32 %141)
  store i32 %142, i32* %4, align 4
  %143 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %144 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %143, i32 8501, i32* %3)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %3, align 4
  %146 = and i32 %145, 15
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, 112
  store i32 %148, i32* %3, align 4
  %149 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %149, i32 8501, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %153 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %152, i32 3, i32* %3)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, 247
  store i32 %155, i32* %3, align 4
  %156 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %156, i32 3, i32 %157)
  store i32 %158, i32* %4, align 4
  %159 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %160 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %159, i32 28, i32* %3)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %3, align 4
  %162 = and i32 %161, 127
  store i32 %162, i32* %3, align 4
  %163 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %163, i32 28, i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %167 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %166, i32 8569, i32* %3)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %3, align 4
  %169 = and i32 %168, 248
  store i32 %169, i32* %3, align 4
  %170 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %170, i32 8569, i32 %171)
  store i32 %172, i32* %4, align 4
  %173 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %174 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %173, i32 8570, i32* %3)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %3, align 4
  %176 = and i32 %175, 248
  store i32 %176, i32* %3, align 4
  %177 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %177, i32 8570, i32 %178)
  store i32 %179, i32* %4, align 4
  %180 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %181 = call i32 @lgdt3306a_soft_reset(%struct.lgdt3306a_state* %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i64 @lg_chkerr(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %71
  br label %188

186:                                              ; preds = %71
  %187 = call i32 @dbg_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %185, %70, %63, %51, %39, %25, %18
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @dbg_info(i8*) #1

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state*, i32, i32) #1

declare dso_local i64 @lg_chkerr(i32) #1

declare dso_local i32 @lgdt3306a_soft_reset(%struct.lgdt3306a_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
