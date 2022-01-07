; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@Faulty = common dso_local global i32 0, align 4
@ExternalBbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"faulty%s\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"in_sync%s\00", align 1
@Journal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"journal%s\00", align 1
@WriteMostly = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"write_mostly%s\00", align 1
@Blocked = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"blocked%s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"spare%s\00", align 1
@WriteErrorSeen = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"write_error%s\00", align 1
@WantReplacement = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"want_replacement%s\00", align 1
@Replacement = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"replacement%s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"external_bbl%s\00", align 1
@FailFast = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"failfast%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i8*)* @state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @state_show(%struct.md_rdev* %0, i8* %1) #0 {
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @READ_ONCE(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @Faulty, align 4
  %13 = call i64 @test_bit(i32 %12, i64* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ExternalBbl, align 4
  %17 = call i64 @test_bit(i32 %16, i64* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19, %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %25, %19, %15
  %34 = load i32, i32* @In_sync, align 4
  %35 = call i64 @test_bit(i32 %34, i64* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32, i32* @Journal, align 4
  %47 = call i64 @test_bit(i32 %46, i64* %7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %49, %45
  %58 = load i32, i32* @WriteMostly, align 4
  %59 = call i64 @test_bit(i32 %58, i64* %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i32, i32* @Blocked, align 4
  %71 = call i64 @test_bit(i32 %70, i64* %7)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load i32, i32* @Faulty, align 4
  %81 = call i64 @test_bit(i32 %80, i64* %7)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79, %69
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8*, i8** %5, align 8
  %88 = call i64 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %83, %79, %73
  %92 = load i32, i32* @Faulty, align 4
  %93 = call i64 @test_bit(i32 %92, i64* %7)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @Journal, align 4
  %97 = call i64 @test_bit(i32 %96, i64* %7)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @In_sync, align 4
  %101 = call i64 @test_bit(i32 %100, i64* %7)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8*, i8** %5, align 8
  %108 = call i64 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %103, %99, %95, %91
  %112 = load i32, i32* @WriteErrorSeen, align 4
  %113 = call i64 @test_bit(i32 %112, i64* %7)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i8*, i8** %4, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8*, i8** %5, align 8
  %120 = call i64 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %115, %111
  %124 = load i32, i32* @WantReplacement, align 4
  %125 = call i64 @test_bit(i32 %124, i64* %7)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8*, i8** %5, align 8
  %132 = call i64 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %131)
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %6, align 8
  br label %135

135:                                              ; preds = %127, %123
  %136 = load i32, i32* @Replacement, align 4
  %137 = call i64 @test_bit(i32 %136, i64* %7)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i8*, i8** %4, align 8
  %141 = load i64, i64* %6, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %143)
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %139, %135
  %148 = load i32, i32* @ExternalBbl, align 4
  %149 = call i64 @test_bit(i32 %148, i64* %7)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i8*, i8** %4, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8*, i8** %5, align 8
  %156 = call i64 (i8*, i8*, ...) @sprintf(i8* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %155)
  %157 = load i64, i64* %6, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %151, %147
  %160 = load i32, i32* @FailFast, align 4
  %161 = call i64 @test_bit(i32 %160, i64* %7)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i8*, i8** %4, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8*, i8** %5, align 8
  %168 = call i64 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %167)
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %6, align 8
  br label %171

171:                                              ; preds = %163, %159
  %172 = load i64, i64* %6, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i8*, i8** %5, align 8
  %176 = call i64 @strlen(i8* %175)
  %177 = load i64, i64* %6, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %6, align 8
  br label %179

179:                                              ; preds = %174, %171
  %180 = load i64, i64* %6, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = load i64, i64* %6, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = call i64 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %185 = add i64 %180, %184
  ret i64 %185
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
